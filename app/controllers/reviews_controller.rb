class ReviewsController < ApplicationController

  def edit
    @review = Escape.find(params[:escape_id]).reviews.find(params[:id])
  end

  def update
    authorize! :update, Review, message: "Non sei autorizzato a questa azione"
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

    def review_params
      p = params.require(:review).permit(:valutazione, :difficoltà, :testo_recensione, :user)
      {:valutazione=> p[:valutazione], :difficoltà =>p[:difficoltà], :testo_recensione =>p[:testo_recensione], :user=>current_user}
    end

    def user_reviews
      @user = User.find(params[:id])
    end




end
