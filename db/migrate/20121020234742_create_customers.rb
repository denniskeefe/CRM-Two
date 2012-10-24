class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name_first
      t.string :name_last
      t.string :name_company
      t.string :email
      t.string :address_street
      t.string :address_city
      t.string :address_state
      t.string :address_state
      t.string :postal_code
      t.string :phone
      t.integer :id

      t.timestamps
    end
  end
end
