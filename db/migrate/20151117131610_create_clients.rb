class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.datetime :birthday
      t.string :gender
      t.string :place
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
