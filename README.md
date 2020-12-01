# rails-module-active_hash
> Active hash for rails.

## from:memory<Content>
```rb
class Country < ActiveHash::Base
  self.data = [
    { :id => 1, :name => "US" },
    { :id => 2, :name => "Canada" },
    { :id => 3, :name => "China" },
    { :id => 4, :name => "Japan" },
    { :id => 5, :name => "India" },
  ]
end
```

## from:yml<Role>
```rb
class Role < ActiveYaml::Base
  # set_root_path Rails.root.join("db/data")
  set_root_path "db/data"
  set_filename "role"
end
```

> Database:(/db/data/role.yml)
```yml
# array style
- id: 1
  code: admin
  name: 管理员
- id: 2
  code: usern
  name: 注册用户
```

## relationship
> generator
```rb
rails g model Post title content category_id:integer
# rails d model Post title content
# 注意这里不要用(这种会要求有 categories表，导致save不成功)
# rails g model Post title content category:references
```

> Category.rb
```rb
class Category < ActiveHash::Base
  include ActiveHash::Associations # this looks like the one
  has_many :posts

  self.data = [
    { :id => 1, :code => "movie", :name => "Movie" },
    { :id => 2, :code => "cn-series", :name => "CN Series" },
    { :id => 3, :code => "us-series", :name => "US Series" },
  ]
end
```

> Post.rb
```rb
class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
end
```

> Seeds.rb
```rb
p1 = Post.new
p1.title = "title1"
p1.content = "content1"
p1.category = Category.first;
p1.save

p2 = Post.new
p2.title = "title2"
p2.content = "content2"
p2.category = Category.first;
p2.save

# category
c1 = Category.first
puts c1.posts
```

