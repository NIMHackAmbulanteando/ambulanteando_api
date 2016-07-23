# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ambulanteando_api,
  ecto_repos: [AmbulanteandoApi.Repo]

# Configures the endpoint
config :ambulanteando_api, AmbulanteandoApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2VMzUO3ii30AVNL8wuCc4jWO1ZM0MEIvGOEbc3+5JUHFpO7pam1KqH2SJ8jIHr3J",
  render_errors: [view: AmbulanteandoApi.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AmbulanteandoApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
