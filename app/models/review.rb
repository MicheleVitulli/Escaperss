class Review < ApplicationRecord
  belongs_to :escape
  belongs_to :escaper
end
