# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'

class DogExtension < Radiant::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/dog"
  
  # define_routes do |map|
  #   map.namespace :admin, :member => { :remove => :get } do |admin|
  #     admin.resources :dog
  #   end
  # end
  define_routes do |map|
      map.resources :dogs 
      map.resources :dogsadmin 
      # do |dogs|
      #   dogs.resources :dogsadmin
      # end
      # map.namespace 'dogsadmin' do |admin|
      #   admin.resources :dogsadmin
      # end
      
  end
    
  def activate
    admin.tabs.add "Dog", "/dogsadmin", :after => "Layouts", :visibility => [:all]
    Page.send :include, DogTags
  end
  
  def deactivate
    # admin.tabs.remove "Dog"
  end
  
end
