class Member < ApplicationRecord
    belongs_to :brand
    belongs_to :people
end