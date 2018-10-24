use Mix.Config

# Configure your database
config :a, A.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "a_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
