defmodule WarhammerCharacters.Character do
  use Ash.Resource,
    data_layer: AshPostgres.DataLayer

  attributes do
    uuid_primary_key :id

    attribute :name, :string
    attribute :age, :string
    attribute :species, :string
    attribute :status, :string
    attribute :player, :string
    attribute :career, :string
    attribute :career_path, :string
  end

  relationships do
    has_one :characteristics, __MODULE__.Characteristics
    has_many :skills, __MODULE__.Skill
    has_many :trappings, __MODULE__.Trapping
    has_many :talents, __MODULE__.Talent
  end

  postgres do
    table "characteristics"
    repo WarhammerCharacters.Repo
  end
end
