xml.instruct! 

xml.rss :version => "2.0", "xmlns:georss" => "http://www.georss.org/georss" do
 xml.channel do

   xml.title       "Banta Bernarard"
   xml.link        url_for :only_path => false, :controller => 'articles'
   xml.description "Banta Bernarard aticles about GeoRSS"

   @articles.each do |article|
     xml.item do
       xml.title       article.author
       xml.link        url_for :only_path => false, :controller => 'articles', :action => 'show', :id => article.id
       xml.description article.content
       xml.guid        url_for :only_path => false, :controller => 'articles', :action => 'show', :id => article.id
			 xml.georss :point do
					xml.text! article.latitude.to_s + ' ' + article.longitude.to_s
			end
     end
   end

 end
end
