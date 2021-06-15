defmodule Iipmcrud.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Iipmcrud.Repo,
      # Start the Telemetry supervisor
      IipmcrudWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Iipmcrud.PubSub},
      # Start the Endpoint (http/https)
      IipmcrudWeb.Endpoint
      # Start a worker by calling: Iipmcrud.Worker.start_link(arg)
      # {Iipmcrud.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Iipmcrud.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    IipmcrudWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
