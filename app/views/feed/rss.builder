xml.instruct!

xml.rss (:version => "2.0", "xmlns:georss" => "http://www.georss.org/georss") {
 xml.channel {

   xml.title       "paulsturgess.co.uk articles"
   xml.link        url_for :only_path => false, :controller => 'articles'
   xml.description "paulsturgess.co.uk Ruby on Rails articles"

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

 }
}
