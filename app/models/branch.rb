class Branch < ApplicationRecord
    has_many :students, dependent: :destroy
    has_many :grades, through: :students

end
