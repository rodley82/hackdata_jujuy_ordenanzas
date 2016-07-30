class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :title
      t.string :description
      t.datetime :expires_at

      t.timestamps null: false
    end
  end
end
