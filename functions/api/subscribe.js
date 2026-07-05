const JSON_HEADERS = { "Content-Type": "application/json" };

function jsonResponse(body, status) {
  return new Response(JSON.stringify(body), {
    status,
    headers: JSON_HEADERS,
  });
}

function toHex(bytes) {
  return Array.from(bytes, (byte) => byte.toString(16).padStart(2, "0")).join("");
}

function createToken() {
  const bytes = new Uint8Array(32);
  crypto.getRandomValues(bytes);
  return toHex(bytes);
}

async function parseBody(request) {
  const contentType = request.headers.get("Content-Type") || "";

  if (contentType.includes("application/json")) {
    return request.json();
  }

  const form = await request.formData();
  return Object.fromEntries(form.entries());
}

function confirmationEmail(origin, email, token) {
  const confirmUrl = `${origin}/api/confirm?token=${token}`;
  const unsubscribeUrl = `${origin}/api/unsubscribe?token=${token}`;

  return {
    from: "Maxime Desalle <newsletter@send.maxdesalle.com>",
    to: [email],
    subject: "Confirm your subscription",
    text: `Confirm your subscription:\n${confirmUrl}\n\nUnsubscribe:\n${unsubscribeUrl}`,
    html: `
      <div style="font-family:system-ui,-apple-system,sans-serif;line-height:1.5;color:#111">
        <p>Confirm your subscription:</p>
        <p><a href="${confirmUrl}" style="color:#111">Confirm subscription</a></p>
        <p style="margin-top:24px;font-size:14px">Unsubscribe: <a href="${unsubscribeUrl}" style="color:#555">unsubscribe</a></p>
      </div>
    `.trim(),
  };
}

export async function onRequestPost(context) {
  const { request, env } = context;
  let body;

  try {
    body = await parseBody(request);
  } catch {
    body = {};
  }

  const email = typeof body.email === "string" ? body.email.trim().toLowerCase() : "";
  const turnstileToken = body["cf-turnstile-response"] || body.token;
  const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

  if (!emailPattern.test(email)) {
    return jsonResponse(
      { ok: false, message: "Please enter a valid email address." },
      400,
    );
  }

  try {
    const verificationBody = new URLSearchParams({
      secret: env.TURNSTILE_SECRET_KEY,
      response: typeof turnstileToken === "string" ? turnstileToken : "",
      remoteip: request.headers.get("CF-Connecting-IP") || "",
    });
    const verificationResponse = await fetch(
      "https://challenges.cloudflare.com/turnstile/v0/siteverify",
      {
        method: "POST",
        headers: { "Content-Type": "application/x-www-form-urlencoded" },
        body: verificationBody,
      },
    );
    const verification = await verificationResponse.json();

    if (verification.success !== true) {
      const codes = Array.isArray(verification["error-codes"])
        ? verification["error-codes"].join(", ")
        : "unknown";
      return jsonResponse(
        { ok: false, message: `Verification failed (${codes}).` },
        400,
      );
    }

    const token = createToken();
    const upsertSql = `
      INSERT INTO subscribers (email, status, token)
      VALUES (?1, 'pending', ?2)
      ON CONFLICT(email) DO UPDATE SET
        token = ?2,
        status = CASE
          WHEN subscribers.status = 'active' THEN 'active'
          ELSE 'pending'
        END
    `;

    await env.DB.prepare(upsertSql).bind(email, token).run();

    const subscriber = await env.DB.prepare(
      "SELECT status FROM subscribers WHERE email = ?1",
    )
      .bind(email)
      .first();

    if (subscriber?.status !== "active") {
      const origin = new URL(request.url).origin;
      const resendResponse = await fetch("https://api.resend.com/emails", {
        method: "POST",
        headers: {
          Authorization: `Bearer ${env.RESEND_API_KEY}`,
          "Content-Type": "application/json",
        },
        body: JSON.stringify(confirmationEmail(origin, email, token)),
      });

      if (!resendResponse.ok) {
        throw new Error("Confirmation email could not be sent");
      }
    }

    return jsonResponse(
      { ok: true, message: "Check your inbox to confirm." },
      200,
    );
  } catch {
    return jsonResponse(
      { ok: false, message: "Something went wrong." },
      500,
    );
  }
}
