class Note < ApplicationRecord
    belongs_to :brand
    belongs_to :people
end