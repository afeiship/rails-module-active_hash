class Country < ActiveHash::Base
  self.data = [
    { :id => 1, :name => "US" },
    { :id => 2, :name => "Canada" },
    { :id => 3, :name => "China" },
    { :id => 4, :name => "Japan" },
    { :id => 5, :name => "India" },
  ]
end
