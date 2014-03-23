class AddLdapToPerson < ActiveRecord::Migration
  def change
    add_column :people, :ldap, :integer
  end
end
