class Student < ApplicationRecord
    belongs_to :grade
    belongs_to :branch

    validates :name, presence: true
    validates :city, presence: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :cgpa, presence: true
end
