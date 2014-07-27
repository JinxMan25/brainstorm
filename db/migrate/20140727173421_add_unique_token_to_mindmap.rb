class AddUniqueTokenToMindmap < ActiveRecord::Migration
  def change
    add_column :mindmaps, :unique_token, :string
  end
end
