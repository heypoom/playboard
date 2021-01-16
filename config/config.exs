# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :playboard,
  ecto_repos: [Playboard.Repo]

# Configures the endpoint
config :playboard, PlayboardWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "igkENNiv9DvIL6INObNhSrIbXlhuM2e0e5POEVvfZO7S9A/j65T1HgvhsQz/fxfJ",
  render_errors: [view: PlayboardWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Playboard.PubSub,
  live_view: [signing_salt: "vMia5ToW"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
