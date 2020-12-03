class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title # attributes added to table
      # t.text: description
    end
  end
end
