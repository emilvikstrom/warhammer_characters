defmodule WarhammerCharacters.Api do
  use Ash.Api

  resources do
    registry WarhammerCharacters.Registry
    resource WarhammerCharacters.Character
  end
end
