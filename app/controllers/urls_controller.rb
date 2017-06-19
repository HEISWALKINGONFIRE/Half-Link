class UrlsController < ApplicationController

  def index
    @url_long = Url.last
    @url_short = Url.last
    # @Url_t =Url.find(url:params[:short_url])
    @url = Url.new()
    # @url.save
    # redirect_to "/"
    # # @url = Url.last
  end
  # def new
  #   @url = Url.new
  # end

  def create
    @url = Url.new(url_params)
    @url.long_url
       if @url.save
        redirect_to "/show"
      else
        flash[:danger] = "invalid link, please try again."
        redirect_to "#"

    end
  end
  def show
    @url_long = Url.last
    @url_short = Url.last

  end

  # def click_count
  #   @url_t = Url.find_by(short_url:params[:short_url])
  #   @url_t.click_count += 1
  #   @url_t.save
  #   redirect_to "/"
  # end

  def shorten
    @url = Url.find(url:params[:short_url])
    # @url.click_count += 1
    @url.save
  end


  private
  def url_params
    params.require(:url).permit(:long_url, :short_url, :click_count)

  end
  def long_url_params
    params.require(:url).permit(:long_url)
  end

end
