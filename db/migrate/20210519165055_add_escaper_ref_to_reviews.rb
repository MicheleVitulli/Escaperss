class AddEscaperRefToReviews < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews, :escaper, null: false, foreign_key: true
  end
end
