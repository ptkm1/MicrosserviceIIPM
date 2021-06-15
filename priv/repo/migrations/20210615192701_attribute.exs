defmodule Iipmcrud.Repo.Migrations.Attribute do
  use Ecto.Migration

  def change do
    alter table(:boss) do
      add :posts, references(:posts)
    end
  end
end
