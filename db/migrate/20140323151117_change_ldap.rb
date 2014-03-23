class ChangeLdap < ActiveRecord::Migration
  def change
  	change_column :people, :ldap,  :string
  end
end
