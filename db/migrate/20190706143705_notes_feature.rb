class NotesFeature < ActiveRecord::Migration[5.0]
  def change
    create_table :notes
    add_column :notes, :brand_id, :integer
    add_column :notes, :people_id, :integer
    add_column :notes, :note_datetime, :datetime
    add_column :notes, :note_content, :string
  end
end
