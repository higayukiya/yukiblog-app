class RemoveContensFromArticles < ActiveRecord::Migration[6.0]
  def change
    remove_column :articles, :contens
  end
end
