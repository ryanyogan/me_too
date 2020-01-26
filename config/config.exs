use Mix.Config

config :me_too,
  ecto_repos: [MeToo.Repo]

config :me_too, MeTooWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uMDDAsdqShCdBYVed9ctO6wjPjoCvCRvAsAQGPS1PieWtOSNMeZ2edAi5+J6jnqu",
  render_errors: [view: MeTooWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MeToo.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "h+cFJqYCmXe3mFuyET+nq9WEYHrLaTpF"
  ]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :json_library, Jason

import_config "#{Mix.env()}.exs"
