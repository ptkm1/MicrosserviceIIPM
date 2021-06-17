defmodule IipmcrudWeb.Admin.CreateAdminController do
  use IipmcrudWeb, :controller

  alias Iipmcrud.CreateAdmin

  def create(conn, params) do
    case CreateAdmin.run(params) do
      {:ok, _} ->
        json(conn, %{status: "success"})

      {:error, _} ->
        conn
        |> put_status(400)
        |> json(%{status: "Not created"})
    end
  end
end
