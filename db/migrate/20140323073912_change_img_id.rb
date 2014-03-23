class ChangeImgId < ActiveRecord::Migration
  def change
  	change_column :people, :imgId,  :string
  end
end
