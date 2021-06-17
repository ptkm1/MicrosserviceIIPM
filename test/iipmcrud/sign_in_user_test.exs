defmodule Iipmcrud.SignInUserTest do
  use Iipmcrud.DataCase, async: true

  alias Iipmcrud.{User, SignInUser}

  describe "run/2" do
    test "returns ok when email and password passed on match" do
      params = %{email: "example@outlook.com", password: "123456"}
      user = %User
      assert {:ok, user} = SignInUser.run(params)
    end

    test "" do
    end

    test "" do
    end

  end
end
