class AddColumnsToUserGroups < ActiveRecord::Migration[6.0]
  def change
    add_reference :user_groups, :groups, foreign_key: true
    add_reference :user_groups, :users, foreign_key: true
    add_reference :user_groups, :items, foreign_key: true
  end
end
