class EventsController < ApplicationController

  skip_before_filter :verify_authenticity_token, :only => [ :create ]

  def index
    render json: Event.all
  end

  def create
    event = Simplify::Event.create({'payload' => request.raw_post})
    event_model = Event.new
    event_model.name = event['name']
    event_model.data = event['data']
    event_model.save

    render text: event.to_s
  end
end
