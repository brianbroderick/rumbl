defmodule Lensformation.UserController do
  use Lensformation.Web, :controller

  def index(conn, _params) do
    users = Repo.all(Lensformation.User)
    render conn, "index.html", users: users
  end

  def show(conn, %{"id" => id}) do
    user = Repo.get(Lensformation.User, String.to_integer(id))
    render conn, "show.html", user: user
  end
end
