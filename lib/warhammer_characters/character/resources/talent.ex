defmodule WarhammerCharacters.Character.Talent do
  alias WarhammerCharacters.Character

  use Ash.Resource,
    data_layer: AshPostgres.DataLayer

  actions do
    # Add a set of simple actions. You'll customize these later.
    defaults [:create, :read, :update, :destroy]
  end

  attributes do
    # Add an autogenerated UUID primary key called `:id`.
    uuid_primary_key :id

    # Add a string type attribute called `:subject`
    attribute :name, :string
    attribute :times_taken, :integer
    attribute :description, :string
  end

  relationships do
    belongs_to :character, Character
  end

  postgres do
    table "talents"
    repo WarhammerCharacters.Repo
  end
end
