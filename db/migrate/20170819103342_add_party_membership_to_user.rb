class AddPartyMembershipToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :party_membership, foreign_key: true
  end
end
