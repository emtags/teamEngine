class CreateTeamPeople < ActiveRecord::Migration
  def change
    create_table :team_people do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
