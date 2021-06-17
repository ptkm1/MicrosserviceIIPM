defmodule Iipmcrud.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :name, :string
      add :email, :string
      add :code, :string

      timestamps()
    end

    create unique_index(:posts, [:email])
    create unique_index(:posts, [:code])
  end
end
