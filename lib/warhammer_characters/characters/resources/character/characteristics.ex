# defmodule WarhammerCharacters.Character.Characteristics do
#   use Ash.Resource,
#     data_layer: AshPostgres.DataLayer

#   code_interface do
#     define_for WarhammerCharacters.Api
#     define :create, action: :create
#     define :read_all, action: :read
#     define :update, action: :update
#     define :destroy, action: :destroy
#   end

#   actions do
#     # Exposes default built in actions to manage the resource
#     defaults [:create, :read, :update, :destroy]
#   end

#   attributes do
#     uuid_primary_key :id

#     attribute :weapon_skill, :integer
#     attribute :ballistic_skill, :integer
#     attribute :strength, :integer
#     attribute :toughness, :integer
#     attribute :intelligence, :integer
#     attribute :agility, :integer
#     attribute :dexterity, :integer
#     attribute :initiative, :integer
#     attribute :willpower, :integer
#     attribute :fellowship, :integer
#   end

#   postgres do
#     table "characteristics"
#     repo WarhammerCharacters.Repo
#   end

#   relationships do
#     belongs_to :character, WarhammerCharacters.Character
#   end
# end
