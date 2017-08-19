class AddPartyMembershipToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :party_memberships, :user, foreign_key: true
  end
end
