class Role < ActiveYaml::Base
  # set_root_path Rails.root.join("db/data")
  set_root_path "db/data"
  set_filename "role"
end
