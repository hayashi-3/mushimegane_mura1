class Event < ApplicationRecord
    has_many :participants, dependent: :destroy
    has_many :reservations, dependent: :destroy
end
