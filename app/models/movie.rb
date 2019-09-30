class Movie < ApplicationRecord
    # model association
  has_many :reserva, dependent: :destroy
end