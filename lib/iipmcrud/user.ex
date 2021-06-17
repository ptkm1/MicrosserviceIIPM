defmodule Iipmcrud.User do
  use Ecto.Schema

  schema "users" do
    field :email, :string
    field :name, :string
    field :password_hash, :string
    has_many :places, Iipmcrud.Place, foreign_key: :id

    timestamps()
  end
end
