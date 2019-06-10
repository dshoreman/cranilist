defmodule CranilistWeb.PageController do
  use CranilistWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
