class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :maker, null:false
      t.string :item, null:false
      t.integer :battery, null:false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
