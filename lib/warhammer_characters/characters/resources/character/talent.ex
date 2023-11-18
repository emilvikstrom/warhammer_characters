defmodule WarhammerCharacters.Character.Talent do
  use Ash.Resource,
    data_layer: AshPostgres.DataLayer

  attributes do
    uuid_primary_key :id

    attribute :name, :string
    attribute :advances, :integer
    attribute :description, :string
  end

  postgres do
    table "talent"
    repo WarhammerCharacters.Repo
  end

  relationships do
    belongs_to :character, WarhammerCharacters.Character
  end
end
