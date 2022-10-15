class Dealership < ApplicationRecord
    has_many :vehicles, dependent: :restrict_with_exception 
    enum dealership_id: {TT: 0, Toyota: 1, NAZCA: 2,  }
end
