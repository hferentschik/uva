module DogTags
  include Radiant::Taggable
  
  desc "Creates a random set of dogs"
  tag "random_dogs" do |tag|
    content = '<ul>'
    dogs = Dog.find(:all, :order => 'RAND()', :limit => 6)
    for dog in dogs do
      content << '<li>'
      content << '<a href="/images/' + dog.picture_file_name + '" rel="lightbox" title="' + dog.name + '">'
      content << '<img src="' + dog.picture_file_name_list + '"/>'
      content << '</a>'
      content << '<br/>'
      content << dog.name 
      content << '</li>'
    end
    content << '</ul>'
    return content
  end
end