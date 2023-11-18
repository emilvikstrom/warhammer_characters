defmodule WarhammerCharacters.Registry do
  use Ash.Registry,
    extensions: [
      # This extension adds helpful compile time validations
      Ash.Registry.ResourceValidations
    ]

  entries do
    entry WarhammerCharacters.Accounts.User
    entry WarhammerCharacters.Accounts.Token
    entry WarhammerCharacters.Character
    #  entry WarhammerCharacters.Character.Characteristics
    #  entry WarhammerCharacters.Character.Skill
    #  entry WarhammerCharacters.Character.Talent
    #  entry WarhammerCharacters.Character.Trapping
  end
end
