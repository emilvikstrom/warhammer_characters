defmodule WarhammerCharacters.Repo.Migrations.AddSkills do
  @moduledoc """
  Updates resources based on their most recent snapshots.

  This file was autogenerated with `mix ash_postgres.generate_migrations`
  """

  use Ecto.Migration

  def up do
    create table(:skills, primary_key: false) do
      add :id, :uuid, null: false, default: fragment("uuid_generate_v4()"), primary_key: true
      add :name, :text
      add :characteristic, :text
      add :advances, :bigint
      add :description, :text

      add :character_id,
          references(:characters,
            column: :id,
            name: "skills_character_id_fkey",
            type: :uuid,
            prefix: "public"
          )
    end
  end

  def down do
    drop constraint(:skills, "skills_character_id_fkey")

    drop table(:skills)
  end
end