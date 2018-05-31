class Api::V1::ReviewsController < ApplicationController
before_action :find_review, only: [:update]
  def index
    @review = Review.all
    render json: @review
  end

  def update
    @review.update(review_params)
    if @review.save
      render json: @review, status: :accepted
    else
      render json: { errors: @review.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def review_params
    params.permit(:title, :content)
  end

  def find_review
    @review = Review.find(params[:id])
  end
end
