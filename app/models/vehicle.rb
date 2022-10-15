class Vehicle < ApplicationRecord
  belongs_to :dealership
  validates_associated :dealership
  enum tipo: {sedan: 0, pickup: 1, urban: 2, todoterreno: 3, deportivos: 4, descapotables: 5,  }# validar enums
  validates :marca, presence: true
  validates :modelo, presence: true
  validates :precio, numericality: true
end
