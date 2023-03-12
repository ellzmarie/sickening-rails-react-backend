class EventsController < ApplicationController

    def index
        # render({ :json => "hi"})
        events = Events.all 
        render json: {status: 200, events: events}

    def show
        render json: Events.find(params[:id])
    end

    def create
    end

    private 

    def event_params
        params.required(:event).permit(:event_title, :image, :description)
    end
        
end