class EscapersController < ApplicationController
  
  def show
    @esc = Escaper.find(params[:id])
  end

  def index
    @escs = Escaper.all
  end

  def new
    @esc = Escaper.new
  end

  def create
    @esc = Escaper.new(esc_params)
    if @esc.save
      redirect_to @esc
    else
      render :new
    end
  end

  def edit
    @esc = Escaper.find(params[:id])
  end

  def destroy
    @esc = Escaper.find(params[:id])
    @esc.destroy

    redirect_to root_path
  end

  def update
    @esc = Escaper.find(params[:id])
    if @esc.update(esc_params)
      redirect_to @esc
    else
      render :edit
    end
  end

  private
    def esc_params
      params.require(:escaper).permit(:user)
  end
end
