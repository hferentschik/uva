
module DogCreationHelper
  def create_dog
    @dog = Dog.new 
    @dog.name = 'Fido Two'
    @dog.gender = 'M'
    @dog.description = 'Fido is a nice dog'
    @dog.birthdate = Date.new 2010, 2, 2
    @dog.asset_id = 1
  end
  
  def kill_dog
    @dog.destroy
  end
end

describe Dog, "when creating and saving new ones" do
  include DogCreationHelper
  
  before :each do
    create_dog
  end
  
  it "should be findable" do

    @dog.save
    
    foundfido = Dog.find :first, :conditions => ['name = "Fido Two"']
    foundfido.name.should == @dog.name
    foundfido.gender.should == @dog.gender
    foundfido.description.should == @dog.description
    foundfido.birthdate.should == @dog.birthdate
  end
  
  it "makes sure all fields are mandatory" do
    dog = Dog.new 
    lambda { dog.save }.should raise_exception
  end
  
  after :each do
    kill_dog
  end
end

describe Dog, "when having a picture" do
  include DogCreationHelper
  
  before :each do
    create_dog
  end
  
  it "should return a nice picture file name" do
    @dog.picture_file_name.should match /\.\.\/assets\/\d+\/\w+.(jpg|gif)/
  end
  
  after :each do
    kill_dog
  end
end