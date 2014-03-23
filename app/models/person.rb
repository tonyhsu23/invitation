class Person < ActiveRecord::Base
  validates :name, :presence => true
  validates :ldap, :presence => true
end
