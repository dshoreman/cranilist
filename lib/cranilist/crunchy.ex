defmodule Crunchy do

  def queue(client) do
    Tesla.get(client, "/queue.0.json")
  end

  def client(session_id) do
    middleware = [
      Tesla.Middleware.JSON,
      {Tesla.Middleware.BaseUrl, "https://api.crunchyroll.com"},
      {Tesla.Middleware.Headers, [{"User-Agent", "Mozilla/5.0 (X11; Linux x86_64; rv:67.0) Gecko/20100101 Firefox/67.0"}]},
      {Tesla.Middleware.Query, [session_id: session_id]},
    ]

    Tesla.client(middleware)
  end
end
