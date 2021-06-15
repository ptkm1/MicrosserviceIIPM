defmodule Iipmcrud.SignInAdminTest do
  use Iipmcrud.DataCase, async: true

  alias Iipmcrud.{Admin, SignInAdmin}

  describe "run/2" do
    test "returns ok when email and password passed on match" do
      params = %{email: "example@outlook.com", password: "123456"}
      admin = %Admin
      assert {:ok, admin} = SignInAdmin.run(params)
    end

    test "" do
    end

    test "" do
    end

  end
end
