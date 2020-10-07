class Public::ReservationsController < ApplicationController
  def edit
    @event = Event.find(params[:event_id])
    @reservation = Reservation.new
  end

  def confirm
  end
end
