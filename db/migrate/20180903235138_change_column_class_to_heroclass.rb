class ChangeColumnClassToHeroclass < ActiveRecord::Migration[5.2]
  def change
    change_table :heros do |t|
      t.rename :class, :heroclass
    end
  end
end
