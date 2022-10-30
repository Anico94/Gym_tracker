class Workout < ApplicationRecord
    belongs_to :user, :optional => true
    has_many :exercises
end
