class Purchasement < ActiveRecord::Base
  belongs_to :buyer, class_name: 'User', foreign_key: 'buyer_id'

  belongs_to :product
end
# I'm here끊었다 lol   이제 purchasement 마이그레이션으로 넵 product.rb 에서도 셀러