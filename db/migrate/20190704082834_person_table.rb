class PersonTable < ActiveRecord::Migration[5.0]
  def change
    create_table :persons
    add_column :persons, :first_name, :string
    add_column :persons, :last_name, :string
    add_column :persons, :person_facebook, :string
    add_column :persons, :person_twitter, :string
    add_column :persons, :person_instagram, :string
    add_column :persons, :person_website, :string
    add_column :persons, :person_mail, :string
    add_column :persons, :person_phone, :string
  end
end
