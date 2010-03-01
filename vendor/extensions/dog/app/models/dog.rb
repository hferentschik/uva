class Dog < ActiveRecord::Base  
  def picture_file_name
    pic = Asset.find :first, :conditions => { :id => self.asset_id }
    '../assets/' + self.asset_id.to_s + '/' + pic.asset_file_name
  end
end
