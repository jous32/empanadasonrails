class CreateSystemInformations < ActiveRecord::Migration
  def change
    create_table :system_informations do |t|
      t.integer :ram_available
      t.datetime :checked_at

      t.timestamps null: false
    end
  end
end
