class CreateBusinessments < ActiveRecord::Migration
  def change
    create_table :businessments do |t|
      t.string :name
      t.belongs_to :seller, class_name: 'User', index: true, foreign_key: true
      t.belongs_to :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
