class AddMentorToUsers < ActiveRecord::Migration
  def change
    add_column :users, :mentor, :boolean
  end
end
