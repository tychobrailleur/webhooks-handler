class EventController < ApplicationController

  skip_before_filter :verify_authenticity_token, :only => [:receive]

  def receive
    event = Simplify::Event.create({'payload' => request.raw_post})
    event_model = Event.new
    event_model.name = event['name']
    event_model.data = event['data']
    event_model.save

    render text: event.to_s
  end

  def list
    render json: Event.all
  end
end
