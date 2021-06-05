class EscapesController < ApplicationController

    skip_before_action :verify_authenticity_token
    before_action :authenticate_user!
    #authorize! :action, Resource, message => "Non sei autorizzato"

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
    def new
        @escape = Escape.new
    end

    def create
        authorize! :create, Review, message: "Non sei autorizzato"
        @escape = Escape.new(escape_params)
        if @escape.save
            redirect_to escapes_path
        else
            render :new
        end
        #edirect_to escapes_path
    end

    def destroy
        authorize! :destroy, Review, message: "Non sei autorizzato"
        @escape = Escape.find(params[:id])
        @escape.destroy

        redirect_to escapes_path
      end

      def edit
        @escape = Escape.find(params[:id])
      end

      def update
        @escape = Escape.find(params[:id])
        if @escape.update(escape_params)
          redirect_to escapes_path
        else
          render :edit
        end
      end








#definizione dei parametri
      def escape_params
          params.require(:escape).permit(:Luogo, :Stanza, :Descrizione)
      end

end
