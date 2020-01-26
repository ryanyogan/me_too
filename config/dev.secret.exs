use Mix.Config

config :me_too, MeToo.Repo,
  username: "postgres",
  password: "postgres",
  database: "me_too_dev",
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10
