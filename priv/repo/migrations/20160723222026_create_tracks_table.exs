defmodule AmbulanteandoApi.Repo.Migrations.CreateTracksTable do
  use Ecto.Migration

  def change do
    create table(:tracks) do
      add :total_kilometers, :float
      add :initial_spot_x, :string
      add :initial_spot_y, :string
      add :final_spot_x, :string
      add :final_spot_y, :string
      
      timestamps
    end

  end
end
