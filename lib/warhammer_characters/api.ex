defmodule WarhammerCharacters.Api do
  use Ash.Api

  resources do
    registry WarhammerCharacters.Registry
  end
end
