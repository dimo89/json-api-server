defmodule JsonApiWeb.DocumentView do
  use JsonApiWeb, :view
  use JaSerializer.PhoenixView

  attributes [:name, :published, :content, :view_count, :project_id]
end
