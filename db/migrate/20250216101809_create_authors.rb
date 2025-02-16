class CreateAuthors < ActiveRecord::Migration[7.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.text :description
      t.string :profile_pic
      t.string :email

      t.timestamps
    end
  end
end
