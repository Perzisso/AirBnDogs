class Stroll < ApplicationRecord
    belongs_to :dogsitter
    has_many :dog
    belongs_to :city
end
