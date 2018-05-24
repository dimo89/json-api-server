defmodule JsonApiWeb.ProjectView do
  use JsonApiWeb, :view
  use JaSerializer.PhoenixView

  attributes [:title, :description]
end
