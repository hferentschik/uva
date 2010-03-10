class Dog < ActiveRecord::Base  
  validates_length_of :name, :minimum => 1, :message => 'should be at least one character long'
  validates_length_of :description, :minimum => 5, :message => 'should be at least five characters'
  
  def picture_file_name
    pic = Asset.find :first, :conditions => { :id => self.asset_id }
    '../assets/' + self.asset_id.to_s + '/' + pic.asset_file_name
  end
  
  def age 
    if birthdate.nil?
      'Unknown'
    else
      DateTime.now.year - birthdate.year
    end
  end
  
  def long_gender
    if gender == 'F'
      'Female'
    else
      'Male'
    end
  end
  
  def long_size
    if size == 'L'
      'Large'
    elsif size == 'S'
      'Small'
    else
      'Medium'
    end
  end
  
  def Dog.not_adopted
    find :all, :conditions => {:adopted => false}
  end
  
  def Dog.possible_ages
    (0..8).collect { |i| [i,i]  } + [['>8', 9]]
  end
end
