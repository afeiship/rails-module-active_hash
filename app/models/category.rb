class Category < ActiveHash::Base
  include ActiveHash::Associations # this looks like the one
  has_many :posts

  self.data = [
    { :id => 1, :code => "movie", :name => "Movie" },
    { :id => 2, :code => "cn-series", :name => "CN Series" },
    { :id => 3, :code => "us-series", :name => "US Series" },
  ]
end
