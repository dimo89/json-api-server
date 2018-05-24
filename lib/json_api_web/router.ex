defmodule JsonApiWeb.Router do
  use JsonApiWeb, :router

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

  pipeline :json_api do
    plug :accepts, ["json-api"]
    plug JaSerializer.Deserializer
  end

  scope "/api", JsonApiWeb do
    pipe_through :json_api # Use the default browser stack

    resources "/projects", ProjectController, only: [:index, :show]
    resources "/documents", DocumentController, only: [:index, :show]
  end

  # Other scopes may use custom stacks.
  # scope "/api", JsonApiWeb do
  #   pipe_through :api
  # end
end
