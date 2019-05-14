class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :text
      t.string :user_id
      t.string :book_id

      t.timestamps
    end
  end
end
