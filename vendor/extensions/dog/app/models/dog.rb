class Dog < ActiveRecord::Base  
  validates_length_of :name, :minimum => 1, :message => 'should be at least one character long'
  validates_length_of :description, :minimum => 5, :message => 'should be at least five characters'
  
  # TODO remove this methods and hook into the asset controller directly. 
  def picture_file_name
    if asset
      asset_path + asset.asset_file_name
    else
      ''
    end
  end
  
  def thumbnail_file_name
    if asset
      asset_path + asset.basename + '_thumbnail.png'
    else
      ''
    end
  end
  
  def asset_path
    '../assets/' + self.asset_id.to_s + '/' 
  end
  
  def asset
    Asset.find :first, :conditions => { :id => self.asset_id }
  end
  
  def picture_file_name_list
    if asset
      asset_path + asset.basename + '_list.' + asset.extension
    else
      ''
    end
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
      'Grande'
    elsif size == 's' && gender == 'f'
      'Pequeña'
    elsif size == 's' && gender == 'm'
      'Pequeño'  
    elsif size == 'm' && gender == 'f'
      'Mediana'      
    else
      'Mediano'
    end
  end
  
  def Dog.not_adopted conditions
    order = 'name'
    if !conditions[:birthdate].nil?
        order = 'birthdate,' + order
    end
    notadopted = { :adopted => false }
    find :all, :conditions => conditions.merge( notadopted ), :order => order
  end
  
  def Dog.possible_ages
    [['<1', 1]] + [['<2', 2]] + [['<3', 3]] + [['<4', 4]] + [['<5', 5]] + [['<6', 6]] + [['<7', 7]] + [['<8', 8]] + [['<9', 9]] + [['<10', 10]] + [['10+', 15]] 
  end
  
  def Dog.possible_genders
    [['Hembra', 'f'], ['Macho', 'm']]
  end
  
  def Dog.possible_sizes
    [['Pequeño', 's'], ['Mediano', 'm'], ['Grande', 'l']]
  end
end
