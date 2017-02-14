# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :lensformation,
  ecto_repos: [Lensformation.Repo]

# Configures the endpoint
config :lensformation, Lensformation.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3GHhEX5aEvCY+JL3LjUlCJ61iy7fm95FQgXizqOYPvtZlTL+XCsFs0tn/cGEcDFR",
  render_errors: [view: Lensformation.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Lensformation.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
