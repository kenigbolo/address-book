class User < ApplicationRecord
  belongs_to :address_book
  belongs_to :party_membership
  validates_associated :address_book
end
