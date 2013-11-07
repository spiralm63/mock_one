class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
      t.integer :years
      t.boolean :training
      t.integer :user_id
      t.integer :skill_id
      t.timestamps
    end
  end
end
