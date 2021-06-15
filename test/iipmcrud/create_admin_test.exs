defmodule Iipmcrud.CreateAdminTest do
  use Iipmcrud.DataCase, async: true

  alias Iipmcrud.{Admin, CreateAdmin}

  describe "run/1" do
    test "Returns a struct when the params are valid" do
      params = %{name: "foo", email: "foo@bar.com", password: "123456"}
      assert {:ok, %Admin{} = admin} = CreateAdmin.run(params)
      assert admin.name == "foo"
      assert admin.email == "foo@bar.com"
      refute admin.password_hash == "123456"
    end

    test "Returns error when name is missing" do
    end

    test "Returns error when email is missing" do
    end

    test "Returns error when password is missing" do
    end
  end
end
