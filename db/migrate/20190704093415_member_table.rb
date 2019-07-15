class MemberTable < ActiveRecord::Migration[5.0]
  def change
    create_table :members
    add_column :members, :brand_id, :integer
    add_column :members, :people_id, :integer
    add_column :members, :member_role, :string
  end
end
