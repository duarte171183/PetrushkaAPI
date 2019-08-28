class AddBrandToStyle < ActiveRecord::Migration[5.1]
  def change
    add_reference :styles, :brand, foreign_key: true
  end
end
