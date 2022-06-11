class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.integer :month
      t.integer :day
      t.string :youbi
      t.string :plan
      t.string :tomi
      t.string :yama
      t.string :oga
      t.string :sige
      t.string :kuro
      t.string :jyog
      t.string :nisi
      t.string :hara
      t.text :body

      t.timestamps
    end
  end
end
