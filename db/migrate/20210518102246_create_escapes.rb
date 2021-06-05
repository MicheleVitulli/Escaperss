class CreateEscapes < ActiveRecord::Migration[6.1]
  def change
    create_table :escapes do |t|
      t.string 'Luogo'
      t.string 'Stanza'
      t.string 'Valutazione'
      t.string 'Difficoltà'
      t.text 'Descrizione'

      t.timestamps
    end
  end
end
