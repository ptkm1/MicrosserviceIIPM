defmodule Iipmcrud.Place do
  use Ecto.Schema

  schema "places" do
    field :code, :string
    field :email, :string
    field :name, :string
    belongs_to :user, Iipmcrud.User

    timestamps()
  end
end
