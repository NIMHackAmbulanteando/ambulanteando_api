defmodule AmbulanteandoApi.Repo.Migrations.CreateSpotTable do
  use Ecto.Migration

  def change do
  	create table(:spots)do
  		add :spot_x, :integer
  		add :spot_y, :integer
  		add :image_url, :string 
  		add :spot_rate, :integer
  		add :street_rate, :integer
  		add :spot_name, :string 
  		add :giro, :integer 

  		timestamps
  	end

  end
end
