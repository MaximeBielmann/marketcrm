class Brand < ApplicationRecord
    has_many :members
    has_many :notes
end