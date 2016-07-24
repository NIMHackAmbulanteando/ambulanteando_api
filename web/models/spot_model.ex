defmodule AmbulanteandoApi.SpotModel do
	use AmbulanteandoApi.Web, :model 

	schema "spots" do
		field :spot_x, :integer
		field :spot_y, :integer 
		field :image_url, :string 
		field :spot_rate, :integer 
		field :street_rate, :integer 
		field :spot_name, :string 
		field :giro, :integer 

		timestamps
	end

	@required_fields ~w(spot_x spot_y spot_rate street_rate spot_name giro)
	@optional_fields ~w(image_url)

	def changeset(model, params \\ :empty) do
		model
		|>cast(params, @required_fields, @optional_fields)
	end

end