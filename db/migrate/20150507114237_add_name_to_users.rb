class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, null: false, default: ""
    add_column :users, :number_of_bonsai ,:integer
    add_column :users, :profile ,:text
  end
end