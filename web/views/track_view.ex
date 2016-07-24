defmodule AmbulanteandoApi.TrackView do
	use AmbulanteandoApi.Web, :view

	def render("create.json", %{track_view: track_view}) do
		%{data: render_one(track_view, AmbulanteandoApi.TrackView, "track.json")}
	end

	def render("track.json", %{track_view: track}) do
		%{
			total_kilometers: track.total_kilometers,
			initial_spot_x: track.initial_spot_x,
			initial_spot_y: track.initial_spot_y,
			final_spot_x: track.final_spot_x,
			final_spot_y: track.final_spot_y
		}
	end

	def render("error.json", %{changeset: changeset}) do
		%{
			errors: changeset
		}
	end

end
