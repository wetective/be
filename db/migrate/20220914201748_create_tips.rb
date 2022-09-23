class CreateTips < ActiveRecord::Migration[5.2]
  def change
    create_table :tips do |t|
      t.string :uid
      t.string :location
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
