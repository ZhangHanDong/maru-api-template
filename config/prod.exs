use Mix.Config

config :demo, Demo.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: System.get_env("DB_USERNAME"),
  password: System.get_env("DB_PASSWORD"),
  database: System.get_env("DB_DATABASE"),
  hostname: System.get_env("DB_HOST"),
  port: System.get_env("DB_PORT"),
  pool_size: System.get_env("POOL_SIZE")
