class Api::V1::EventsController < ApplicationController

    def index
        # render({ :json => "hi"})
        render (json: {events: Event.all})

    def show
        render (json: Event.find(params[:id]))
    end

    def create
        event = Event.new(event_params)

        if event.save
            render(json: {event: event}, status: 201)
        else 
            render(json: {event: event}, status: 422)
        end
    end

    private 

    def event_params
        params.required(:event).permit(:event_title, :image, :description)
    end        
end