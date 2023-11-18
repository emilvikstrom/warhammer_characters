defmodule WarhammerCharacters.Character do
  use Ash.Resource,
    data_layer: AshPostgres.DataLayer

  code_interface do
    define_for WarhammerCharacters.Api
    define :create, action: :create
    define :read_all, action: :read
    define :update, action: :update
    define :destroy, action: :destroy
  end

  actions do
    # Exposes default built in actions to manage the resource
    defaults [:create, :read, :update, :destroy]

    # create :create do
    #   primary? true

    #   argument :name, :string, allow_nil?: false
    #   # argument :age, :string, allow_nil?: false
    #   # argument :species, :string, allow_nil?: false
    #   # argument :status, :string, allow_nil?: false
    #   # argument :player, :string, allow_nil?: false
    #   # argument :career, :string, allow_nil?: false
    #   # argument :career_path, :string, allow_nil?: false
    #   # argument :characteristics, :map, allow_nil?: false
    #   # argument :skills, :map
    #   #
    #   # argument :trappings, :map
    #   #
    #   # argument :talents, :map

    #   # change manage_relationship(:characteristics, :characteristics, type: :create)
    #   # change manage_relationship(:skills, :skills, type: :create)
    #   # change manage_relationship(:trappings, :trappings, type: :create)
    #   # change manage_relationship(:talents, :trappings, type: :create)
    # end
  end

  attributes do
    uuid_primary_key :id

    attribute :name, :string
    # attribute :age, :string
    # attribute :species, :string
    # attribute :status, :string
    # attribute :player, :string
    # attribute :career, :string
    # attribute :career_path, :string
  end

  # relationships do
  #  has_one :characteristics, __MODULE__.Characteristics
  #  has_many :skills, __MODULE__.Skill
  #  has_many :trappings, __MODULE__.Trapping
  #  has_many :talents, __MODULE__.Talent
  # end

  postgres do
    table "character"
    repo WarhammerCharacters.Repo
  end
end
