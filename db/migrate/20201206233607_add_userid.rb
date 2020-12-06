class AddUserid < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :user_id, :int # add user_id column to articles table
  end
end
