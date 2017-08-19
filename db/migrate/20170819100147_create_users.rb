class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.text :phone_number
      t.text :email
      t.text :id_code

      t.timestamps
    end
  end
end
