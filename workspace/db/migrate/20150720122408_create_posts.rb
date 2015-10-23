class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.string  :pname
      t.string  :pwd
      t.text  :content
      t.string  :my_image

      t.timestamps null: false
    end
  end
end
