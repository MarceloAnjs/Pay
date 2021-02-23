# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :pay,
  ecto_repos: [Pay.Repo]

# Configures the endpoint
config :pay, PayWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "O4OB73xAISrkIWwZHaqyYAt0pVaB1zBeX0pjuqUmad7V2FIMQpt3l90GeXv3UG8b",
  render_errors: [view: PayWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Pay.PubSub,
  live_view: [signing_salt: "wNrCmoZq"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
