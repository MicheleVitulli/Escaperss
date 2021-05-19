class Escape < ApplicationRecord
  has_many :reviews, dependent: :destroy

  def mediaVoti
    total1 = 0
    self.reviews.each do |rev|
      total1 += rev.valutazione
    end
    return (total1.to_f/self.reviews.count.to_f).round(2)
  end


  def mediaDiff
    total2 = 0
    self.reviews.each do |rev|
      total2 += rev.difficoltà
    end
    return (total2.to_f/self.reviews.count.to_f).round(2)
  end


end
