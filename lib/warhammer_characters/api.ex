defmodule WarhammerCharacters.Accounts do
  use Ash.Api

  resources do
    registry WarhammerCharacters.Accounts.Registry
  end
end
