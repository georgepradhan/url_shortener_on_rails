class UrlsController < ApplicationController
  
  def index
  	@urls = Url.all
  	@url = Url.new
  	@new_user = Url.new
  end

  def create
  	@url = Url.new(params[:url])
  	# @url = Url.new(params)
  	if @url.save
  		redirect_to urls_path
  	else
  		render 'index'
  	end
  end

  def show
  	url = Url.find(params[:id])
  	redirect_to url.long_url
  end

end