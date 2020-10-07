class Reservation < ApplicationRecord
MAX_RESERVATION_COUNT = 20

  belongs_to :participant
  belongs_to :event

  validate :event_count_must_be_within_limit

  private
  def event_count_must_be_within_limit
    errors.add(:base, "予約上限人数を超えています。") if participant.reservations.count >= MAX_RESERVATION_COUNT
  end

end
