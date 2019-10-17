module PhilLocator
  class Region < ActiveYaml::Base
    include ActiveHash::Associations

    set_root_path [Gem.loaded_specs["phil_locator"].full_gem_path, "data"].join("/")
    set_filename "regions"

    has_many :provinces, class_name: "PhilLocator::Province", foreign_key: :region_code, primary_key: :code

    def cities
      PhilLocator::City.where(region_code: code.to_i.to_s)
    end

    def psgcCode
      code.ljust(9, "0")
    end
  end
end
