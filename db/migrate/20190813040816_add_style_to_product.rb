class AddStyleToProduct < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :style, foreign_key: true
  end
end
