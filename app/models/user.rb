class User < ApplicationRecord
    has_secure_password
    validates :email, :uniqueness => true, :presence => true
    has_many :workouts
    has_many :exercises, :through => :workouts

    def self.bmi_calculator weight, height
        bmi = (weight/ height**2 * 10000).round(2)
    end

    def self.bmi_category bmi
        case
        when bmi < 18.5
            "Underweight"
        when bmi < 24.9 
            "Healthy Weight"
        when bmi < 29.9
            "Overweight"
        when bmi < 39.9
            "Severly Obese"
        else 
            "Morbidly Obese"
        end
    end

end
