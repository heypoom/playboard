defmodule PlayboardWeb.PageController do
  use PlayboardWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
