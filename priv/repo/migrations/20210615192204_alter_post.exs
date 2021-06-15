defmodule Iipmcrud.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    alter table(:posts) do
      add :boss_id, references(:boss)
    end
  end
end
