defmodule AmbulanteandoApi.TrackController do
	use AmbulanteandoApi.Web, :controller
	alias AmbulanteandoApi.TrackModel

	def create(conn, %{"total_kilometers" => total_kilometers, "initial_spot_x" =>initial_spot_x, "initial_spot_y" =>initial_spot_y, "final_spot_x" =>final_spot_x, "final_spot_y" =>final_spot_y}) do
		changeset = TrackModel.changeset(%TrackModel{}, %{total_kilometers: total_kilometers,
			initial_spot_x: initial_spot_x, initial_spot_y: initial_spot_y, final_spot_x: final_spot_x, final_spot_y: final_spot_y})

		case Repo.insert(changeset) do
			{:ok, track} ->
				render(conn,"create.json",track_view: track)
			{:error, changeset} ->
				render(conn, "error.json",changeset: changeset)
		end	
	end 

end