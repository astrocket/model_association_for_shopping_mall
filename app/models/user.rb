class User < ActiveRecord::Base
    has_many :purchasements
    has_many :products, through: :purchasements
    
    has_many :businessments
    has_many :products, through: :businessments
    #이렇게 하고 migration user로 아니지 product.rb 루
    # I'm watching
end
