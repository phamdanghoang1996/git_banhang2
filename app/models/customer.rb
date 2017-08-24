class Customer < ApplicationRecord
  validates :name, length: { maximum: 10 }
end
