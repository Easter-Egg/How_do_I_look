class CreateCon12posts < ActiveRecord::Migration
  def change
    create_table :con12posts do |t|
      t.string  :content
      
      t.timestamps null: false
    end
  end
end
