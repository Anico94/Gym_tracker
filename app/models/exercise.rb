class Exercise < ApplicationRecord
    belongs_to :workout, :optional => true
end
