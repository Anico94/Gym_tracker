class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.text :name
      t.integer :height
      t.float :weight
      t.string :password_digest
      
      t.timestamps
    end
  end
end
