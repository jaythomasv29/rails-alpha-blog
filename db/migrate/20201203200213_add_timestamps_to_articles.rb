class AddTimestampsToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :description, :text #method to add columns to a data table using a new migration
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end
