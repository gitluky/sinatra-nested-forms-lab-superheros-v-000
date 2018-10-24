class ChangeTableHerosToHeroes < ActiveRecord::Migration[5.2]
  def change
    rename_table :heros, :heroes
  end
end
