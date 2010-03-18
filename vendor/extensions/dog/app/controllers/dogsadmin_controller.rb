class DogsadminController < ApplicationController
  
  # GET /dogs
  # GET /dogs.xml
  def index
    @dogs = Dog.find :all, :order => 'name'
    @admin = true

    respond_to do |format|
      format.html #{ render '/dogs/index.html.erb' }
      format.xml  { render :xml => @dogs }
    end
  end
  
  # GET /dogs/1
  # GET /dogs/1.xml
  def show
    @dog = Dog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dog }
    end
  end

  # GET /dogs/new
  # GET /dogs/new.xml
  def new
    @dog = Dog.new
    @action = 'create'

    respond_to do |format|
      format.html { render :template => 'dogsadmin/edit'}
      format.xml  { render :xml => @dog }
    end
  end

  # GET /dogs/1/edit
  def edit
    @dog = Dog.find(params[:id])
    @action = 'update'
  end

  # POST /dogs
  # POST /dogs.xml
  def create
    age = rip_out_age params[:dog]
    @dog = Dog.new params[:dog]
    @dog.birthdate = DateTime.new( DateTime.now.year - age )

    respond_to do |format|
      if @dog.save
        flash[:notice] = 'Dog was successfully created.'
        format.html { redirect_to '/dogsadmin/' + @dog.id.to_s  }
        format.xml  { render :xml => @dog, :status => :created, :location => @dog }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dog.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def rip_out_age dog_params
    age = dog_params[:age].to_i
    dog_params.delete :age # need to remove age since it is not part of 'Dog'
    age
  end

  # PUT /dogs/1
  # PUT /dogs/1.xml
  def update
    @dog = Dog.find(params[:id])
    age = rip_out_age params[:dog]
    @dog.birthdate = DateTime.new( DateTime.now.year - age )

    respond_to do |format|
      if @dog.update_attributes(params[:dog])
        flash[:notice] = 'Dog was successfully updated.'
        format.html { redirect_to '/dogsadmin/' + @dog.id.to_s }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dog.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dogs/1
  # DELETE /dogs/1.xml
  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy

    respond_to do |format|
      format.html { redirect_to('/dogsadmin') }
      format.xml  { head :ok }
    end
  end
end
