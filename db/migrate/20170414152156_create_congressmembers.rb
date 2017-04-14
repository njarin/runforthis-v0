class CreateCongressmembers < ActiveRecord::Migration
  def change
    create_table :congress_members do |t|
      t.string :name, null: false
      t.string :state, null: false
      t.integer :district
      t.string :website
      t.string :end, null: false

      t.timestamps null: false
    end
  end
end
