class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
    t.string :title
    t.text :description
    add_column :user, :created_at :date times
    add_column :user, :updated_at :date times
    end
  end
end
