class Brand < ApplicationRecord
    has_many :styles, inverse_of: :brand

    validates :name, uniqueness: true

    accepts_nested_attributes_for :styles
end
