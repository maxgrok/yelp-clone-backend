class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :phone_number
      t.string :website

      t.timestamps
    end
  end
end
