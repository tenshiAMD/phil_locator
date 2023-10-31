module PhilLocator
  class IslandGroup < ActiveYaml::Base
    include ActiveHash::Associations

    set_root_path module_parent.data_root_path(:yaml)
    set_filename "island_groups"
  end
end
