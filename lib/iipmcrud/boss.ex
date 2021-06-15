defmodule Iipmcrud.Boss do
  use Ecto.Schema
  import Ecto.Changeset

  schema "boss" do
    field :email, :string
    field :name, :string
    field :password_hash, :string
    has_many :posts, Iipmcrud.Post

    timestamps()
  end

  @doc false
  def changeset(boss, attrs) do
    boss
    |> cast(attrs, [:name, :email, :password_hash])
    |> validate_required([:name, :email, :password_hash])
    |> unique_constraint(:email)
  end
end
