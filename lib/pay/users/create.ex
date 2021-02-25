defmodule Pay.Users.Create do
  alias Pay.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
