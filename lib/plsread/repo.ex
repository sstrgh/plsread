defmodule Plsread.Repo do
  use Ecto.Repo,
    otp_app: :plsread,
    adapter: Ecto.Adapters.Postgres
end
