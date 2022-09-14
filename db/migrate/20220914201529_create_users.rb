class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone
      t.string :email
      t.string :city
      t.string :state
      t.string :password_digest

      t.timestamps
    end
  end
end
