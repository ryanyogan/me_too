defmodule MeTooWeb.Router do
  use MeTooWeb, :router
  use Pow.Phoenix.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Phoenix.LiveView.Flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :protected do
    plug Pow.Plug.RequireAuthenticated,
      error_handler: Pow.Phoenix.PlugErrorHandler
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :browser

    pow_routes()
  end

  scope "/", MeTooWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  scope "/", MeTooWeb do
    pipe_through [:browser, :protected]

    resources "/conversations", ConversationController

    live "/conversations/:conversation_id/users/:user_id",
         ConversationLive,
         as: :conversation
  end
end
