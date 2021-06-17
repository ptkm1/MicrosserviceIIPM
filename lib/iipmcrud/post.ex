defmodule Iipmcrud.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :code, :string
    field :email, :string
    field :name, :string
    belongs_to :boss, Iipmcrud.Boss, foreign_key: :boss_id

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:name, :email, :code])
    |> validate_required([:name, :email, :code])
    |> unique_constraint(:email)
    |> unique_constraint(:code)
  end
end
