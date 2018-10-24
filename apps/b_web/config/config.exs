# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :b_web,
  namespace: BWeb,
  ecto_repos: [A.Repo]

# Configures the endpoint
config :b_web, BWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "88/nU2uyaXiafFFtrOsdMH1XnOZgCco/HHD2Z2NXUOVOfIuuEDaZ5Cknlo+ebd5D",
  render_errors: [view: BWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :b_web, :generators,
  context_app: :a

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
