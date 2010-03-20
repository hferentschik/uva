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
  
   # This is a ugly hack. Really this tag should have its own extension. It has
   # nothing to do with dogs. Translate is only a crutch or translating months names into Spanish
   # since the i18n module of rails is not ready yet.
  desc "Temporary tag for translating dates from <r:date> to Spanish"
  tag "translate" do |tag|
    content = ''
    content << tag.expand
    content.gsub!("January", "Enero")
    content.gsub!("February", "Febrero")
    content.gsub!("March", "Marzo")
    #content.gsub!("April", "April")
    content.gsub!("May", "Mayo")
    content.gsub!("June", "Junio")
    content.gsub!("July", "Julio")
    content.gsub!("August", "Agosto")
    content.gsub!("September", "Septiembre")
    content.gsub!("October", "Octubre")
    content.gsub!("November", "Noviembre")
    content.gsub!("December", "Diciembre")
    return content
  end
end