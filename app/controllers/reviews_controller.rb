class ReviewsController < ApplicationController

  def edit
    @review = Escape.find(params[:escape_id]).reviews.find(params[:id])
  end

  def update
    @review = Escape.find(params[:movie_id]).reviews.find(params[:id])

    if @review.update(review_params)
      redirect_to @review.escape
    else
      render :edit
    end
  end

  def create
    @escape = Escape.find(params[:escape_id])


    @review = @escape.reviews.create(review_params)
    redirect_to escape_path(@escape)
  end

  def destroy
    @escape = Escape.find(params[:escape_id])
    @review = @escape.reviews.find(params[:id])
    @review.destroy
    redirect_to escape_path(@escape)
  end

  private
    def review_params
      p = params.require(:review).permit(:valutazione, :difficoltà, :testo, :escaper)
      {:valutazione=> p[:valutazione], :difficoltà =>p[:difficoltà], :testo =>p[:testo] :escaper=>Escaper.find(p[:escaper])}
    end




end
