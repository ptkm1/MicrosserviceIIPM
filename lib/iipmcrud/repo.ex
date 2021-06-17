defmodule Iipmcrud.Repo do
  use Ecto.Repo,
    otp_app: :iipmcrud,
    adapter: Ecto.Adapters.Postgres
end
