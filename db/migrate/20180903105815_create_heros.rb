class CreateHeros < ActiveRecord::Migration[5.2]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :class
      t.integer :exp
      t.text :items
      t.text :abilities

      t.timestamps
    end
  end
end
