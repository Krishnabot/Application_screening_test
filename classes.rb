#System

class System < ApplicationRecord
    has_many :shops
  end
  
 #Shop

class Shop < ApplicationRecord
    belongs_to :system
    has_many :products
  end

 #Product 

class Product < ApplicationRecord
    belongs_to :shop
    has_and_belongs_to_many :categories
    has_many :prices
  end

 #Category 

class Category < ApplicationRecord
    has_and_belongs_to_many :products
  end

 #Price 

class Price < ApplicationRecord
    belongs_to :product
  end
  