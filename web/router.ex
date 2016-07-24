defmodule AmbulanteandoApi.Router do
  use AmbulanteandoApi.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", AmbulanteandoApi do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/api/v1", AmbulanteandoApi do
    pipe_through :api

    post "/tracks", TrackController, :create 

  end
end
