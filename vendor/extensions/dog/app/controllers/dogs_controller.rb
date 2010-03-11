class DogsController < ApplicationController
  radiant_layout 'TwoColumns'
  no_login_required
  
  # GET /dogs
  # GET /dogs.xml
  def index
    @dogs = Dog.not_adopted

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dogs }
    end
  end
end
