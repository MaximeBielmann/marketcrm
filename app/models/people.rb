class People < ApplicationRecord
    has_one :member
    has_many :notes
end