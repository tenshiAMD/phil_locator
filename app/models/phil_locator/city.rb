module PhilLocator
  class City < ActiveYaml::Base
    include ActiveHash::Associations

    set_root_path self.module_parent.data_root_path
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
