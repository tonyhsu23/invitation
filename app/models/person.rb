class Person < ActiveRecord::Base
  validates :name, :presence => true
  validates :ldap, :presence => true
  validates :imgId, :presence => true
  validates :position, :presence => true
end
