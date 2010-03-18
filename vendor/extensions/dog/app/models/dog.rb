class Dog < ActiveRecord::Base  
  validates_length_of :name, :minimum => 1, :message => 'should be at least one character long'
  validates_length_of :description, :minimum => 5, :message => 'should be at least five characters'
  
  # TODO remove this methods and hook into the asset controller directly. 
  def picture_file_name
    asset_path + asset.asset_file_name
  end
  
  def thumbnail_file_name
    asset_path + asset.basename + '_thumbnail.png'
  end
  
  def asset_path
    '../assets/' + self.asset_id.to_s + '/' 
  end
  
  def asset
    Asset.find :first, :conditions => { :id => self.asset_id }
  end
  
  def picture_file_name_list
    asset_path + asset.basename + '_list.' + asset.extension
  end
  # END TODO
  
  def age 
    if birthdate.nil?
      'Unknown'
    else
      DateTime.now.year - birthdate.year
    end
  end
  
  def long_gender
    if gender == 'f'
      'Hembra'
    else
      'Macho'
    end
  end
  
  def long_size
    if size == 'l'
      'Largo'
    elsif size == 's'
      'Pequeño'
    else
      'Mediano'
    end
  end
  
  def Dog.not_adopted
    find :all, :conditions => {:adopted => false}, :order => 'name'
  end
  
  def Dog.possible_ages
   (0..8).collect { |i| [i,i]  } + [['>8', 9]]
  end
end
