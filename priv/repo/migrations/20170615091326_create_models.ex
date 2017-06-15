defmodule Demo.Repo.Migrations.CreateModels do
  use Ecto.Migration

  def change do
    create table(:models) do
      add :service_uuid, :string
      add :body, :map
    end
  end
end
