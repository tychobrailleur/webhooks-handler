class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :data

      t.timestamps null: false
    end
  end
end
