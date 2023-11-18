defmodule WarhammerCharacters.Registry do
  alias WarhammerCharacters.Accounts
  alias WarhammerCharacters.Character

  use Ash.Registry,
    extensions: [
      # This extension adds helpful compile time validations
      Ash.Registry.ResourceValidations
    ]

  entries do
    entry Accounts.User
    entry Accounts.Token
    entry Character
    entry Character.Characteristics
    entry Character.Skill
    entry Character.Talent
  end
end
