class AddNameAndBooleanToPeople < ActiveRecord::Migration
  def change
    add_column :people, :name, :string
    add_column :people, :attend, :boolean
  end
end
