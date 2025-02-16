class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :edition
      t.string :language
      t.string :isbn
      t.text :description
      t.string :cover_image
      t.integer :age_group, default:0
      t.integer :available_copy, default:0
      t.integer :total_copy, default:0
      t.string :book_location
      t.date :publishing_date
      t.string :publisher
      t.references :category, null: false, foreign_key: true
      t.references :sub_category, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
