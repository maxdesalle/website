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
      "<h1>Invalid link</h1><p>This unsubscribe link is missing a token.</p>",
      400,
    );
  }

  try {
    await env.DB.prepare(
      "UPDATE subscribers SET status = 'unsubscribed' WHERE token = ?1",
    )
      .bind(token)
      .run();

    return htmlPage(
      "Unsubscribed",
      `<h1>You've been unsubscribed.</h1>
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
