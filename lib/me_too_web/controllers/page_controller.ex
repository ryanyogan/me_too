defmodule MeTooWeb.PageController do
  use MeTooWeb, :controller

  plug MeTooWeb.AssignUser,
    preload: :conversations

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
