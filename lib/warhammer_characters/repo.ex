defmodule WarhammerCharacters.Repo do
  use AshPostgres.Repo, otp_app: :warhammer_characters

  def installed_extensions do
    ["uuid-ossp", "citext"]
  end
end
