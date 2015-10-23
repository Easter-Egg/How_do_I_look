class CreateCon12likes < ActiveRecord::Migration
  def change
    create_table :con12likes do |t|
      t.integer :count
      
      t.timestamps null: false
    end
  end
end
