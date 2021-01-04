class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :article, null: false
      t.text :contens, null: false
      t.timestamps
    end
  end
end
