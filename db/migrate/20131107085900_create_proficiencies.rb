class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
      t.integer :years
      t.boolean :training
      t.timestamps
    end
  end
end
