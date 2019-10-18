module PhilLocator
  class City < ActiveYaml::Base
    include ActiveHash::Associations

    set_root_path [Gem.loaded_specs[self.module_parent.to_s.underscore].full_gem_path, "data"].join("/")
    set_filename "cities"

    belongs_to :province, class_name: "PhilLocator::Province", foreign_key: :province_code, primary_key: :code

    def psgcCode
      code.ljust(9, "0")
    end

    def region
      return if province.blank?

      province.region
    end
  end
end
