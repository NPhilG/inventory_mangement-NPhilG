class Item < ApplicationRecord
    belongs_to :ingredients , optional: true


    def self.item_count
        result = {}
        Item.all.each do |x|
            result[x.name] = x.amount
        end
        result
    end
    
    def unit
        result = ['Ounce', 'Cup', 'Liter', 'Gram', 'Kilogram', 'Pound', 'Fluid ounce', 'Teaspoon', 'Tablespoon']
        result 
    end
        

end
