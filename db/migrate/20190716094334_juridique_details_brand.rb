class JuridiqueDetailsBrand < ActiveRecord::Migration[5.0]
  def change
    add_column :brands, :brand_siren, :string
    add_column :brands, :brand_address, :string
    add_column :brands, :brand_postal, :string
    add_column :brands, :brand_city, :string
    add_column :brands, :brand_juridiq, :string
    add_column :brands, :brand_group, :string
  end
end