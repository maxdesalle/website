const HTML_HEADERS = { "Content-Type": "text/html;charset=UTF-8" };

function htmlPage(title, body, status = 200) {
  return new Response(
    `<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>${title}</title>
  </head>
  <body style="margin:0;min-height:100vh;display:grid;place-items:center;background:#fff;color:#111;font-family:system-ui,-apple-system,sans-serif;text-align:center">
    <main style="max-width:600px;padding:32px">${body}</main>
  </body>
</html>`,
    { status, headers: HTML_HEADERS },
  );
}

export async function onRequestGet(context) {
  const { request, env } = context;
  const token = new URL(request.url).searchParams.get("token");

  if (!token) {
    return htmlPage(
      "Missing link",
      "<h1>Invalid link</h1><p>This confirmation link is missing a token.</p>",
      400,
    );
  }

  try {
    // The token is a stable per-subscriber secret: it confirms here and also
    // powers the unsubscribe link in every email, so it is intentionally not
    // rotated. Re-clicking the link is harmless (idempotent activation).
    const result = await env.DB.prepare(
      `UPDATE subscribers
       SET status = 'active', confirmed_at = datetime('now')
       WHERE token = ?1 AND status != 'unsubscribed'`,
    )
      .bind(token)
      .run();

    if (result.meta.changes === 0) {
      // Either the token is unknown, or the row is already active (confirmed_at
      // stays put) / unsubscribed. Treat unknown vs. already-confirmed the same.
      const existing = await env.DB.prepare(
        "SELECT status FROM subscribers WHERE token = ?1",
      )
        .bind(token)
        .first();

      if (existing?.status === "active") {
        return htmlPage(
          "Already subscribed",
          `<h1>You're subscribed ✓</h1>
           <p>Your subscription was already confirmed.</p>
           <p><a href="https://maxdesalle.com/" style="color:#111">Back to maxdesalle.com</a></p>`,
        );
      }

      return htmlPage(
        "Link expired",
        "<h1>Link expired or already used.</h1>",
      );
    }

    return htmlPage(
      "Subscription confirmed",
      `<h1>You're subscribed ✓</h1>
       <p>Thanks for subscribing — you'll get an email when I publish something new.</p>
       <p><a href="https://maxdesalle.com/" style="color:#111">Back to maxdesalle.com</a></p>`,
    );
  } catch {
    return htmlPage(
      "Something went wrong",
      "<h1>Something went wrong.</h1><p>Please try again later.</p>",
      500,
    );
  }
}
