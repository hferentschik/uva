
describe Dog, "#new" do
  
  after :all do
    Dog.destroy_all
  end
  
  it "finds a new one" do
    dog = Dog.new 
    dog.name = 'Fido Two'
    dog.gender = 'M'
    dog.description = 'Fido is a nice dog'
    dog.birthdate = Date.new 2010, 2, 2

    dog.save
    
    foundfido = Dog.find :first, :conditions => ['name = "Fido Two"']
    foundfido.name.should == dog.name
    foundfido.gender.should == dog.gender
    foundfido.description.should == dog.description
    foundfido.birthdate.should == dog.birthdate
  end
  
  it "ensures all fields are mandatory" do
    dog = Dog.new 
    lambda { dog.save }.should raise_exception
  end
end