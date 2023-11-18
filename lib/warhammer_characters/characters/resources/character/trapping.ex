defmodule WarhammerCharacters.Character.Trapping do
  use Ash.Resource,
    data_layer: AshPostgres.DataLayer

  attributes do
    uuid_primary_key :id

    attribute :name, :string
    attribute :weight, :string
    attribute :description, :string
  end

  postgres do
    table "trapping"
    repo WarhammerCharacters.Repo
  end

  relationships do
    belongs_to :character, WarhammerCharacters.Character
  end
end
