class CreateSees < ActiveRecord::Migration[6.1]
  def change
    create_table :sees do |t|
      t.string :ip

      t.timestamps
    end
  end
end
