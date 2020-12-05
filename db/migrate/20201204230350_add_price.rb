class AddPrice < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :price, :float
  end
end
