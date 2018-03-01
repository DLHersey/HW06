defmodule Tasks1Web.PageController do
  use Tasks1Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

# Looking to add New User form. Not sure if this is needed.
"""
  def newUser(conn, _params) do
    changeset = Accounts.change_user(%User{})
    render(conn, "/user/new.html", changeset: changeset)
  end
"""
end
