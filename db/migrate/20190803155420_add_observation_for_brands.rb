class AddObservationForBrands < ActiveRecord::Migration[5.0]
  def change
    add_column :brands, :brand_observation, :text, default: "Néant"
  end
end
