class CreateBosses < ActiveRecord::Migration
  def change
    create_table :bosses do |t|
      
      t.string  :name
      t.string  :boss

      t.timestamps null: false
    end
  end
end
