defmodule IipmcrudWeb.Admin.SessionController do
  use IipmcrudWeb, :controller

  alias Iipmcrud.SignInAdmin

  def create(conn, %{"email" => email, "password" => password}) do
    case SignInAdmin.run(email, password) do
      {:ok, _} ->
        json(conn, %{status: "success"})

      {:error, _} ->
        conn
        |> put_status(401)
        |> json(%{status: "unauthenticated"})
    end
  end
end
