class CreateEscapers < ActiveRecord::Migration[6.1]
  def change
    create_table :escapers do |t|
      t.string :user

      t.timestamps
    end
  end
end
