defmodule AmbulanteandoApi.SpotController do
	use AmbulanteandoApi.Web, :controller 
	alias AmbulanteandoApi.SpotModel

	def create(conn, %{"spot_x" => spot_x, "spot_y" => spot_y, "image_url" => image_url, "spot_rate" => spot_rate, "street_rate" => street_rate, "spot_name" => spot_name, "giro" => giro}) do
		changeset = SpotModel.changeset(%SpotModel{}, %{spot_x: spot_x, spot_y: spot_y, image_url: image_url, 
			spot_rate: spot_rate, street_rate: street_rate, spot_name: spot_name, giro: giro})

		case Repo.insert(changeset) do
			{:ok, spot} ->
				render(conn, "create.json", spot: spot)
			{:error, changeset} ->
				render(conn, "erro.json", changeset: changeset)
		end
	end

end