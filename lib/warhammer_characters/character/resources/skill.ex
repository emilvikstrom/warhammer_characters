defmodule WarhammerCharacters.Character.Skill do
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

    attribute :name, :string
    attribute :characteristic, :string
    attribute :advances, :integer
    attribute :description, :string
  end

  relationships do
    belongs_to :character, WarhammerCharacters.Character
  end

  postgres do
    table "skills"
    repo WarhammerCharacters.Repo
  end
end