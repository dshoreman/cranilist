defmodule CranilistWeb.StartController do
  use CranilistWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def fetch_queue(conn, %{"crsessid" => sess}) do
    client = Crunchy.client(sess)
    {:ok, response} = Crunchy.queue(client)

    conn
    |> assign(:queue, response.body["data"])
    |> assign(:session_id, sess)
    |> render(:queue)
  end
end
