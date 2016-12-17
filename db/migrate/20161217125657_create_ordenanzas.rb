class CreateOrdenanzas < ActiveRecord::Migration
  def change
    create_table :ordenanzas do |t|
      t.string :titulo
      t.date :fecha

      t.timestamps null: false
    end
  end
end
