defmodule WarhammerCharacters.Character.Skill do
  use Ash.Resource,
    data_layer: AshPostgres.DataLayer

  attributes do
    uuid_primary_key :id

    attribute :name, :string
    attribute :characteristic, :string
    attribute :characteristic_val, :integer
    attribute :advances, :integer
    attribute :current, :integer
    attribute :description, :string
  end

  postgres do
    table "skill"
    repo WarhammerCharacters.Repo
  end

  relationships do
    belongs_to :character, WarhammerCharacters.Character
  end
end
