defmodule AmbulanteandoApi.TrackController do
	use AmbulanteandoApi.Web, :controller
	alias AmbulanteandoApi.TrackModel
	require Logger

	def show(conn, _params) do
		tracks = (from t in TrackModel, select: t) |> Repo.all
		render(conn, "show.json", tracks: tracks)
	end

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