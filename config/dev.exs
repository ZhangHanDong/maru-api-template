use Mix.Config

config :demo, Demo.Repo,
  adapter: Ecto.Adapters.MySQL,
  database: "demo_api_repo",
  username: "root",
  password: "",
  hostname: "localhost",
  port: 3306,
  pool_size: 5
