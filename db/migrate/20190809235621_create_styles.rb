class CreateStyles < ActiveRecord::Migration[5.1]
  def change
    create_table :styles do |t|
      t.string :code
      t.decimal :price

      t.timestamps
    end
  end
end
