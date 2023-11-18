defmodule WarhammerCharacters.Character.Characteristics do
  use Ash.Resource,
    data_layer: AshPostgres.DataLayer

  attributes do
    uuid_primary_key :id

    attribute :weapon_skill, :integer
    attribute :ballistic_skill, :integer
    attribute :strength, :integer
    attribute :toughness, :integer
    attribute :intelligence, :integer
    attribute :agility, :integer
    attribute :dexterity, :integer
    attribute :initiative, :integer
    attribute :willpower, :integer
    attribute :fellowship, :integer
  end

  postgres do
    table "character"
    repo WarhammerCharacters.Repo
  end

  relationships do
    belongs_to :character, WarhammerCharacters.Character
  end
end
