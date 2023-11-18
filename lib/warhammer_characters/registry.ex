defmodule WarhammerCharacters.Registry do
  use Ash.Registry,
    extensions: [
      # This extension adds helpful compile time validations
      Ash.Registry.ResourceValidations
    ]

  entries do
    entry WarhammerCharacters.Accounts.User
    entry WarhammerCharacters.Accounts.Token
  end
end
