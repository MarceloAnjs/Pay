defmodule PayWeb.WelcomeController do
  use PayWeb, :controller

  def index(conn, params) do
    text(conn, "Welcome to the Pay API")
  end
end
