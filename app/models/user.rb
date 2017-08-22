class User < ApplicationRecord
  belongs_to :address_book
  has_one :party_membership
  validates_associated :address_book
end
