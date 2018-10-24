class CreateTeam < ActiveRecord::Migration[5.2]
  def change
    create_table :team do |t|
      t.string :name
      t.string :motto
      t.string :members
    end
  end
end
