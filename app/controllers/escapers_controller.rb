class EscapersController < ApplicationController
  def show
    @escAll = Escapers.find(params[:id])
  end

  def index
    @esc = Escapers.all
  end

  def new
    @esc = Escapers.new
  end

  def create
    @esc = Escapers.new(esc_params)
    if @esc.save
      redirect_to @esc
    else
      render :new
    end
  end

  def edit
    @esc = Escapers.find(params[:id])
  end

  def destroy
    @esc = Escapers.find(params[:id])
    @esc.destroy

    redirect_to root_path
  end

  def update
    @esc = Escapers.find(params[:id])
    if @esc.update(esc_params)
      redirect_to @esc
    else
      render :edit
    end
  end

  private
    def esc_params
      params.require(:escapers).permit(:name)
  end
end
