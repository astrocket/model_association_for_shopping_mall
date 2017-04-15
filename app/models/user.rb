class User < ActiveRecord::Base
    has_many :purchasements
    has_many :products, through: :purchasements
    
    has_many :businessments
    has_many :products, through: :businessments
end
