class UsersAndEscapers < ActiveRecord::Migration[6.1]
  def change
    remove_column :reviews, :escaper_id
    add_column :reviews, :user_id, :reference
    drop_table :escapers
  end
end