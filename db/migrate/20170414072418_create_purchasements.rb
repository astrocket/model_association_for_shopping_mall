class CreatePurchasements < ActiveRecord::Migration
  def change
    create_table :purchasements do |t|
      t.string :name
      t.belongs_to :buyer, class_name: 'User', index: true, foreign_key: true
      t.belongs_to :product, index: true, foreign_key: true

      t.timestamps null: false
      #여기
      # 넵음 다된듯? 응응 음 잠맘ㄴ 써야지
      
      #purchasement.rb에서 seller 뒤에는 classname  이랑 foreignkey 안써줘도 되나여??
      # 넵
    end
  end
end
