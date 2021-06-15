# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :iipmcrud,
  ecto_repos: [Iipmcrud.Repo]

# Configures the endpoint
config :iipmcrud, IipmcrudWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "U/zBU2t7ZiEmD2WI6ExEjyd5pkZee9G2vj/nehofsbsjtSdQmSw0+8c8Gu90IwQx",
  render_errors: [view: IipmcrudWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Iipmcrud.PubSub,
  live_view: [signing_salt: "FfgaLJOf"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
