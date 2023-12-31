defmodule WarhammerCharacters.Repo.Migrations.AddCharacter do
  @moduledoc """
  Updates resources based on their most recent snapshots.

  This file was autogenerated with `mix ash_postgres.generate_migrations`
  """

  use Ecto.Migration

  def up do
    create table(:characters, primary_key: false) do
      add :id, :uuid, null: false, default: fragment("uuid_generate_v4()"), primary_key: true
      add :name, :text
      add :age, :text
      add :species, :text
      add :status, :text
      add :player, :text
      add :career, :text
      add :career_path, :text
    end
  end

  def down do
    drop table(:characters)
  end
end
