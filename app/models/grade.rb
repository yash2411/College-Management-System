class Grade < ApplicationRecord
    has_many :students, dependent: :destroy
    has_many :branchs, through: :students
end
