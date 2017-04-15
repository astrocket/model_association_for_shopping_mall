class Product < ActiveRecord::Base
    has_many :purchasements
    has_many :buyers, class_name: 'User', foreign_key: 'buyer_id', through: :purchasements

    has_one :businessment
    has_one :seller, class_name: 'User', foreign_key: 'seller_id', through: :businessment
end
