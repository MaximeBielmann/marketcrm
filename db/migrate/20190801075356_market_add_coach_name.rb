class MarketAddCoachName < ActiveRecord::Migration[5.0]
  def change
    add_column :brands, :brand_market_coach, :string, default: "Maxime"
  end
end
