class CreatePartyMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :party_memberships do |t|

      t.timestamps
    end
  end
end
