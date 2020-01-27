defmodule MeToo.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      MeToo.Repo,
      MeTooWeb.Endpoint,
      Pow.Store.Backend.MnesiaCache
    ]

    opts = [strategy: :one_for_one, name: MeToo.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    MeTooWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
