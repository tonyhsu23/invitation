class AddImageIdToPeople < ActiveRecord::Migration
  def change
    add_column :people, :imgId, :integer
  end
end
