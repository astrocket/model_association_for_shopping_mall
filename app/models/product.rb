class Product < ActiveRecord::Base
    #옴?
    # Yes purchaement.rb 로
    #아... 지렸다...
    # OK
    has_many :purchasements
    has_many :buyers, class_name: 'User', foreign_key: 'buyer_id', through: :purchasements
    # hello by 선재
    # 형 오른쪽에 collaborate 가보세요 채팅가능하네여...
    
    has_one :businessment
    has_one :seller, class_name: 'User', foreign_key: 'seller_id', through: :businessment
end
