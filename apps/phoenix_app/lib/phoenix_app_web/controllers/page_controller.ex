defmodule PhoenixAppWeb.PageController do
  use PhoenixAppWeb, :controller

  def index(conn, _params) do
    integer_number = Application.get_env(:phoenix_app, :sombrilla)
    conn
    |> assign(:integer_number, integer_number)
    |> render("index.html")
  end
end
