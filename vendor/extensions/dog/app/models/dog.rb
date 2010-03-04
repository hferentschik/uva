class Dog < ActiveRecord::Base  
  def picture_file_name
    pic = Asset.find :first, :conditions => { :id => self.asset_id }
    '../assets/' + self.asset_id.to_s + '/' + pic.asset_file_name
  end
  
  def age 
   DateTime.now.year - birthdate.year
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
end
