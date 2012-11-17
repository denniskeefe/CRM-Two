class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :comment
      t.integer :customer_id
      t.timestamps
    end
  end
end
