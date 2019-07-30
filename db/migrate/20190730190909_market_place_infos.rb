class MarketPlaceInfos < ActiveRecord::Migration[5.0]
  def change
    add_column :brands, :brand_market_sign, :boolean, default: false
    add_column :brands, :brand_market_paiement, :boolean, default: false
    add_column :brands, :brand_market_shipping, :boolean, default: false
    add_column :brands, :brand_market_frontpage, :boolean, default: false
    add_column :brands, :brand_market_products, :boolean, default: false
  end
end
