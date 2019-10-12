class CreateContactforms < ActiveRecord::Migration[5.1]
  def change
    create_table :contactforms do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :sindicato
      t.string :cargo
      t.string :mensaje

      t.timestamps
    end
  end
end
