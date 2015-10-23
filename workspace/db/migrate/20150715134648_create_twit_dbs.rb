class CreateTwitDbs < ActiveRecord::Migration
  def change
    create_table :twit_dbs do |t|
      
      t.string  :content

      t.timestamps null: false
    end
  end
end
