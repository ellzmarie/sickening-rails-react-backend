class EventsController < ApplicationController

    def index
        events = Event.all
        render json: {status: 200, events: events}
    end

    def destroy
        event = Event.destroy(params[:id])
        render(status: 204)
    end 

    def update
        event = Event.find(params[:id])
        event.update(event_params)
        render(json: {event: event})
    end 

    def create 
        event = Event.new(event_params)

        if event.save
            render(status: 201, json: {event: event})
        else 
            render(status: 422, json: {event: event})
        end 
    end 

    def show
        puts params 
        event = Event.find(params[:id])
        render json: {status: 200, event: event}
    end

    private # Any method below here

    def event_params
        params.required(:event).permit(:event_title, :image, :description)
    end 

end