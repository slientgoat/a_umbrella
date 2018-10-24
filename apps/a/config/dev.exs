use Mix.Config

# Configure your database
config :a, A.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "a_dev",
  hostname: "localhost",
  pool_size: 10
