require File.dirname(__FILE__) + '/../spec_helper'

describe 'DogTags' do
  dataset :pages
  
  describe '<r:random_dogs>' do
    it 'should render the correct HTML' do
      tag = '<r:random_dogs/>'
      
      expected = %{hello world}
    
      pages(:home).should render(tag).as(expected)
    end
  end
end