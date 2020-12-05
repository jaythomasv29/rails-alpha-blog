class AddPriceString < ActiveRecord::Migration[6.0]
  def change
    remove_column :articles, :price
    add_column :articles, :price, :string
  end
end
