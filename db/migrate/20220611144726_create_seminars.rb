class CreateSeminars < ActiveRecord::Migration[7.0]
  def change
    create_table :seminars do |t|
      t.integer :month
      t.integer :day
      t.string :youbi
      t.string :title1
      t.string :title2
      t.string :title3
      t.string :title4
      t.string :name11
      t.string :name12
      t.string :name13
      t.string :name14
      t.string :name15
      t.string :name21
      t.string :name22
      t.string :name23
      t.string :name24
      t.string :name25
      t.string :name31
      t.string :name32
      t.string :name33
      t.string :name34
      t.string :name35
      t.string :name41
      t.string :name42
      t.string :name43
      t.string :name44
      t.string :name45

      t.timestamps
    end
  end
end
