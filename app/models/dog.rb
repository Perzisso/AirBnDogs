class Dog < ApplicationRecord
    has_many :strolls
    has_many :join_table_dogs_strolls
    has_many :dogsitters, through: :join_table_dogs_strolls
    belongs_to :city 
end
