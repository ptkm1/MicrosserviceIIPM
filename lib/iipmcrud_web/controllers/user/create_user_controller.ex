defmodule IipmcrudWeb.User.CreateUserController do
  use IipmcrudWeb, :controller

  alias Iipmcrud.CreateUser

  def create(conn, params) do
    case CreateUser.run(params) do
      {:ok, _} ->
        json(conn, %{status: "success"})

      {:error, _} ->
        conn
        |> put_status(400)
        |> json(%{status: "Not created"})
    end
  end
end
