class AddressBook < ApplicationRecord
  has_many :users
  validates_length_of :users,
                      maximum: 3,
                      message: 'Entries limit exceeded'
end
