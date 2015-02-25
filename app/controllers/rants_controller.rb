class RantsController < ApplicationController
before_action :set_rant, only: [:show, :update, :destroy]
  def index
    @rants = Rant.all
    render json: @rants
  end

  def show
    render json: @rant
  end

  def create
    @rant = Rant.new(rant_params)
    if @rant.save
      render json: @rant, status: :created, location: @rant
    else
      render json: @rant.errors, status: :unprocessable_entity
    end
  end

  def update
    if @rant.update(post_params)
      head :no_content
    else
      render json: @rant.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @rant.destroy
    head :no_content
  end


  private

  def rant_params
    params.require(:rant).permit(:title, :body)
  end

  def set_rant
    @rant = Rant.find(params[:id])
  end

end
