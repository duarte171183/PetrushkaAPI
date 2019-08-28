class Style < ApplicationRecord
    belongs_to :brand, inverse_of: :styles,  foreign_key: :brand_id
    belongs_to :category
    validates :code, uniqueness: true
end
