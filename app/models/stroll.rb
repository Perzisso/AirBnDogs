class Stroll < ApplicationRecord
    belongs_to :dogsitter
    has_many :join_table_dogs_strolls
    has_many :dogs, through: :join_table_dogs_strolls
    belongs_to :city
end
