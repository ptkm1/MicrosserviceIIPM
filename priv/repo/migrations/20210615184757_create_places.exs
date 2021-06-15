defmodule Iipmcrud.Repo.Migrations.CreatePlaces do
  use Ecto.Migration

  def change do
    create table(:places) do
      add :name, :string
      add :email, :string
      add :code, :string

      timestamps()
    end

    create unique_index(:places, [:email])
    create unique_index(:places, [:code])
  end
end
