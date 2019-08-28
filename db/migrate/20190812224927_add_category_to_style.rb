class AddCategoryToStyle < ActiveRecord::Migration[5.1]
  def change
    add_reference :styles, :category, foreign_key: true
  end
end
