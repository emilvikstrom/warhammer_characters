# defmodule WarhammerCharacters.Character.Skill do
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

#     attribute :name, :string
#     attribute :characteristic, :string
#     attribute :characteristic_val, :integer
#     attribute :advances, :integer
#     attribute :current, :integer
#     attribute :description, :string
#   end

#   postgres do
#     table "skill"
#     repo WarhammerCharacters.Repo
#   end

#   relationships do
#     belongs_to :character, WarhammerCharacters.Character
#   end
# end
