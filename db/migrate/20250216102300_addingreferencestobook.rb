class Addingreferencestobook < ActiveRecord::Migration[7.1]
  def change
    add_reference :books, :category, null: false, foreign_key: true
    add_reference :books, :sub_category, null: false, foreign_key: true
    add_reference :books, :author, null: false, foreign_key: true
  end
end
