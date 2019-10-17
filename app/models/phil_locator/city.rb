module PhilLocator
  class City < ActiveYaml::Base
    include ActiveHash::Associations

    set_root_path [Gem.loaded_specs["phil_locator"].full_gem_path, "data"].join("/")
    set_filename "cities"

    belongs_to :region, class_name: "PhilLocator::Region", foreign_key: :region_code, primary_key: :code
    belongs_to :province, class_name: "PhilLocator::Province", foreign_key: :province_code, primary_key: :code

    def psgcCode
      code.ljust(9, "0")
    end

    def region_code
      self[:region_code].rjust(2, "0")
    end
  end
end
