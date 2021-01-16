defmodule Playboard.Repo do
  use Ecto.Repo,
    otp_app: :playboard,
    adapter: Ecto.Adapters.Postgres
end
