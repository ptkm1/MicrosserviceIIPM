defmodule Iipmcrud.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :email, :string
      add :password_hash, :string
      add :places, references(:places, on_delete: :nothing)

      timestamps()
    end

    create unique_index(:users, [:email])
    create index(:users, [:places])
  end
end
