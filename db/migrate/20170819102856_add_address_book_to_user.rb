class AddAddressBookToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :address_book, foreign_key: true
  end
end
