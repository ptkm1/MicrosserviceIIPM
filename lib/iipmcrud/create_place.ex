defmodule Iipmcrud.CreatePlace do
  import Ecto.Changeset

  alias Iipmcrud.{Place, Repo}

  def run(params) do
    %Place{}
    |> cast(params, [:name, :email, :code, :boss])
    |> validate_required([:name, :email, :code, :boss])
    |> Repo.insert()
  end
end
