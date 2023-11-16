defmodule WarhammerCharacters.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      WarhammerCharactersWeb.Telemetry,
      WarhammerCharacters.Repo,
      {DNSCluster, query: Application.get_env(:warhammer_characters, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: WarhammerCharacters.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: WarhammerCharacters.Finch},
      # Start a worker by calling: WarhammerCharacters.Worker.start_link(arg)
      # {WarhammerCharacters.Worker, arg},
      # Start to serve requests, typically the last entry
      WarhammerCharactersWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: WarhammerCharacters.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    WarhammerCharactersWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
