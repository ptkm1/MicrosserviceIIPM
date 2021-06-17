defmodule IipmcrudWeb.User.SessionController do
  use IipmcrudWeb, :controller

  alias Iipmcrud.SignInUser

  def create(conn, %{"email" => email, "password" => password}) do
    case SignInUser.run(email, password) do
      {:ok, _} ->
        json(conn, %{status: "success"})

      {:error, _} ->
        conn
        |> put_status(401)
        |> json(%{status: "unauthenticated"})
    end
  end
end
