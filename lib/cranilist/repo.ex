defmodule Cranilist.Repo do
  use Ecto.Repo,
    otp_app: :cranilist,
    adapter: Ecto.Adapters.Postgres
end
