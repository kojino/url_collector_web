class StaticPagesController < ApplicationController
  def home
    if params[:search]
      @urls = Url.search(params[:search]).order("shared_at DESC")
    else
      @urls = Url.all.order('shared_at DESC')
    end
  end

  def help
  end
end
