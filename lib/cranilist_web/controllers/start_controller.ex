defmodule CranilistWeb.StartController do
  use CranilistWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def fetch_queue(conn, %{"crsessid" => sess}) do
    conn
    |> assign(:session_id, sess)
    |> render(:queue)
  end
end
