class BrandFeature < ActiveRecord::Migration[5.0]
  def change
    create_table :brands
    add_column :brands, :brand_title, :string
    add_column :brands, :brand_desc, :text
    add_column :brands, :brand_status, :string
    add_column :brands, :brand_mail, :string
    add_column :brands, :brand_phone, :string
    add_column :brands, :brand_website, :string
    add_column :brands, :brand_facebook, :string
    add_column :brands, :brand_twitter, :string
    add_column :brands, :brand_instagram, :string
  end
end
