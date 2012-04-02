class FeedController < ApplicationController
  def rss
  	@articles = Article.find(:all, :order => "id DESC", :limit => 10)
  	render :layout => false
  	response.headers["Content-Type"] = "application/xml; charset=utf-8"
	end
end
