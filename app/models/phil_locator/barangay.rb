module PhilLocator
  class Barangay < ActiveYaml::Base
    include ActiveHash::Associations

    set_root_path self.module_parent.data_root_path
    set_filename "barangays"

    belongs_to :city, class_name: "PhilLocator::City", foreign_key: :city_code, primary_key: :code

    def cities
      PhilLocator::City.where(region_code: code.to_i.to_s)
    end

    def province
      return if city.blank?

      city.province
    end

    def psgcCode
      code.ljust(9, "0")
    end

    def region
      return if province.blank?

      province.region
    end
  end
end
