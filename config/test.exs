use Mix.Config

config :demo, Demo.Repo,
  adapter: Ecto.Adapters.MySQL,
  database: "demo_api_test_repo",
  username: "root",
  password: "",
  hostname: "localhost"
