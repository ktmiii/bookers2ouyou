class CreateSees < ActiveRecord::Migration[6.1]
  def change
    create_table :sees do |t|
      t.integer :user_id
      t.integer :book_id

      t.timestamps
    end
  end
end
