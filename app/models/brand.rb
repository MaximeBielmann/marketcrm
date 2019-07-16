class Brand < ApplicationRecord
    paginates_per 2
    
    has_many :members
    has_many :notes
end