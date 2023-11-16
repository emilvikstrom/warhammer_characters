defmodule WarhammerCharacters.Repo do
  use Ecto.Repo,
    otp_app: :warhammer_characters,
    adapter: Ecto.Adapters.Postgres
end
