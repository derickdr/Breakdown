class AddColumnsToGroupsAndItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :name, :string
    add_column :items, :brand, :string
    add_column :items, :sex, :string
    add_column :items, :size, :string
    add_column :items, :pictures, :string
    add_column :items, :acquisition_value, :integer
    add_column :items, :disposal_value, :integer
    add_column :items, :notes, :string
  end
end
