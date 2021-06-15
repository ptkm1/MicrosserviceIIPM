defmodule Iipmcrud.Repo.Migrations.CreateBoss do
  use Ecto.Migration

  def change do
    create table(:boss) do
      add :name, :string
      add :email, :string
      add :password_hash, :string

      timestamps()
    end

    create unique_index(:boss, [:email])
  end
end
