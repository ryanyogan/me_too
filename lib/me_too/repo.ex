defmodule MeToo.Repo do
  use Ecto.Repo,
    otp_app: :me_too,
    adapter: Ecto.Adapters.Postgres
end
