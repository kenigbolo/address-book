class AddressBook < ApplicationRecord
  has_many :users
  validates_length_of :users, maximum: 10
end
