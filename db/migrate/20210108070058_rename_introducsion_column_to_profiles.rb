class RenameIntroducsionColumnToProfiles < ActiveRecord::Migration[6.0]
  def change
    rename_column :profiles, :introducsion, :introduction
  end
end
