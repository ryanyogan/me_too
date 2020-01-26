use Mix.Config

# Configure your database
config :me_too, MeToo.Repo,
  username: "postgres",
  password: "postgres",
  database: "me_too_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :me_too, MeTooWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
