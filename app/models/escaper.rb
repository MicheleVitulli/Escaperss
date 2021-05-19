class Escaper < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
