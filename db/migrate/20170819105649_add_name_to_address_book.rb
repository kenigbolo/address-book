class AddNameToAddressBook < ActiveRecord::Migration[5.0]
  def change
    add_column :address_books, :name, :string
  end
end
