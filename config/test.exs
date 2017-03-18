use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :lensformation, Lensformation.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :lensformation, Lensformation.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "brian.broderick",
  # password: "postgres",
  database: "lf_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

