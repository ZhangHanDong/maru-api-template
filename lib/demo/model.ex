defmodule Demo.Rule do
  use Ecto.Schema

  schema "models" do
    field :service_uuid, :string
    field :body, :map
  end

  def changeset(demo, params \\ %{}) do
    demo
    |> Ecto.Changeset.cast(params, [:service_uuid])
    |> Ecto.Changeset.validate_required([:service_uuid])
  end
end
