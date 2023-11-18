defmodule WarhammerCharacters.Character.Characteristics do
  use Ash.Resource,
    data_layer: AshPostgres.DataLayer

  actions do
    # Add a set of simple actions. You'll customize these later.
    defaults [:create, :read, :update, :destroy]
  end

  # Attributes are the simple pieces of data that exist on your resource
  attributes do
    # Add an autogenerated UUID primary key called `:id`.
    uuid_primary_key :id

    attribute :weapon_skill, :integer
    attribute :ballistic_skill, :integer
    attribute :strength, :integer
    attribute :toughness, :integer
    attribute :initiative, :integer
    attribute :agility, :integer
    attribute :dextirity, :integer
    attribute :integelligence, :integer
    attribute :willpower, :integer
    attribute :fellowship, :integer
  end

  relationships do
    belongs_to :character, WarhammerCharacters.Character
  end

  postgres do
    table "characteristics"
    repo WarhammerCharacters.Repo
  end
end