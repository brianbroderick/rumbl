defmodule Lensformation.PageController do
  use Lensformation.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
