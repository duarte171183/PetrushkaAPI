class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :description
      t.decimal :revenue
      t.decimal :commission

      t.timestamps
    end
  end
end
