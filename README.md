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