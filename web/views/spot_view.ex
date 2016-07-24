defmodule AmbulanteandoApi.SpotView do
	use AmbulanteandoApi.Web, :view 

	def render("create.json", %{spot: spot}) do
		%{data: render_one(spot, AmbulanteandoApi.SpotView, "spot.json")}
	end

	def render("spot.json", %{spot: spot}) do
		%{	spot_x: spot.spot_x,
			spot_y: spot.spot_y,
			image_url: spot.image_url,
			street_rate: spot.street_rate,
			spot_name: spot.spot_name,
			giro: spot.giro
		}
	end

	def render("error.json", %{changeset: changeset}) do
		%{
			errors: changeset
		}
	end
end