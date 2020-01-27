defmodule MeTooWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :me_too

  socket "/socket", MeTooWeb.UserSocket,
    websocket: true,
    longpoll: false

  socket "/live", Phoenix.LiveView.Socket

  plug Plug.Static,
    at: "/",
    from: :me_too,
    gzip: false,
    only: ~w(css fonts images js favicon.ico robots.txt)

  if code_reloading? do
    socket "/phoenix/live_reload/socket", Phoenix.LiveReloader.Socket
    # plug Phoenix.LiveReloader
    plug Phoenix.CodeReloader
  end

  plug Plug.RequestId
  plug Plug.Telemetry, event_prefix: [:phoenix, :endpoint]

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Phoenix.json_library()

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_me_too_key",
    signing_salt: "Gd9sf5eg"

  plug Pow.Plug.Session,
    otp_app: :me_too,
    cache_store_backend: Pow.Store.Backend.MnesiaCache

  plug MeTooWeb.Router
end
