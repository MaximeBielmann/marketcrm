class Brand < ApplicationRecord
    paginates_per 12
    
    has_many :members
    has_many :notes
end