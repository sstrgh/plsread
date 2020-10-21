# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :plsread,
  ecto_repos: [Plsread.Repo]

# Configures the endpoint
config :plsread, PlsreadWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zDCABZVF5YC6sIoC/+jmhfiIiu7Nh7SCdNFywajXrwZugEqtMbwMzqbh5djDcPHL",
  render_errors: [view: PlsreadWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Plsread.PubSub,
  live_view: [signing_salt: "LW1g0hEg"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
