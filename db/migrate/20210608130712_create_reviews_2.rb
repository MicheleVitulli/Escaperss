class CreateReviews2 < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :valutazione
      t.integer :difficoltà
      t.text :testo_recensione
      t.references :escape, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
