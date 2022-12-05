class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  

  get '/reviews' do 
    reviews = Review.all
    reviews.to_json(include: :daycare)
  end

  get '/reviews/:id' do 
    review = Review.find(params[:id])

    review.to_json(include: :daycare)
  end

  post '/reviews' do 
    review = Review.create(
      rating: params[:rating],
      comment: params[:comment],
      daycare_id: params[:daycare_id]
    )
    review.to_json
  end

  delete '/reviews/:id' do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end

  patch '/reviews/:id' do
    review = Review.find(params[:id])
    review.update(
      rating: params[:rating],
      comment: params[:comment]
    )
    review.to_json(include: :daycare)
  end




end
