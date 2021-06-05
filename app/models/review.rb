class Review < ApplicationRecord
  belongs_to :escape
  belongs_to :user
end
