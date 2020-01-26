defmodule MeTooWeb.PageController do
  use MeTooWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
