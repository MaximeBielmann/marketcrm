class People < ApplicationRecord
    paginates_per 12
    
    has_one :member
    has_many :notes
end