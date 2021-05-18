class EscapesController < ApplicationController
    def index
        @all = Escape.all
        #render json: Escape.all
    end
    def show
        id = params[:id]
        if Escape.exists?(id)
            @escape = Escape.find(id)
        else
            render html: 'Escape non trovata'
        end
        
    end
        
end
