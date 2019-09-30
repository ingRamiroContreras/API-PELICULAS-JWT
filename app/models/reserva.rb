class Reserva < ApplicationRecord
    # model association
    has_one :movie
end
