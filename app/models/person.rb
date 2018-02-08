class Person < ApplicationRecord
  has_many :message

  validates :name, presence: true
  validates :age, numericality: true
end
