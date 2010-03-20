class DogsController < ApplicationController
  radiant_layout 'TwoColumns'
  no_login_required
  
  # GET /dogs
  # GET /dogs.xml
  def index
    @conditions = { }
    assign_condition :gender
    assign_condition :size
    assign_birthdate_condition

    @dogs = Dog.not_adopted @conditions
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dogs }
    end
  end
  
  def assign_condition key
    if !params[key].nil? && !params[key].empty?
      @conditions[key] = params[key]
    end
  end
  
  def assign_birthdate_condition
    if !params[:age].nil? && !params[:age].empty?
      searchedyear = DateTime.now.year - params[:age].to_i
      startdate = searchedyear.to_s + '-01-01'
      enddate = searchedyear.to_s + '-12-31'
      @conditions[:birthdate] = (startdate..enddate)
    end
  end
end
