class CreateAteliers < ActiveRecord::Migration[7.0]
  def change
    create_table :ateliers do |t|
      t.string :name
      t.string :address
      t.string :style
      t.text :details
      t.integer :price_per_day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
