defmodule IipmcrudWeb.Router do
  use IipmcrudWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", IipmcrudWeb do
    pipe_through :api

    post("/admin/login", Admin.SessionController, :create)
    post("/admin", Admin.CreateAdminController, :create)

    post("/user/login", User.SessionController, :create)
    post("/user", User.CreateUserController, :create)
  end

  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through [:fetch_session, :protect_from_forgery]
      live_dashboard "/dashboard", metrics: IipmcrudWeb.Telemetry
    end
  end
end
