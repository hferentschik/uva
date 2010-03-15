module DogTags
  include Radiant::Taggable
  
  desc "Creates a random set of dogs"
  tag "random_dogs" do |tag|
    content = '<center><ul>'
    dogs = Dog.find(:all, :order => 'RAND()', :limit => 6)
    for dog in dogs do
      content << '<li>'
      content << '   <a href="/dogs#' + dog.name + '" title="' + dog.name + '">'
      content << '      <img src="' + dog.picture_file_name_list + '"/>'
      content << '   </a>'
      content << '   <br/>'
      content << '   <a href="/dogs#' + dog.name + '" title="' + dog.name + '">' + dog.name + '</a>'
      content << '</li>'
    end
    content << '</ul></center>'
    return content
  end
end