defmodule AmbulanteandoApi.TrackModel do
	use AmbulanteandoApi.Web, :model 

	schema "tracks" do
		field :total_kilometers, :float
		field :initial_spot_x, :string
		field :initial_spot_y, :string
		field :final_spot_x, :string
		field :final_spot_y, :string
		timestamps
	end

	@required_fields ~w(total_kilometers initial_spot_x initial_spot_y final_spot_x final_spot_y)
	@optional_fields ~w()

	def changeset(model, params \\ :empty) do
		model
		|> cast(params, @required_fields, @optional_fields)
	end

end