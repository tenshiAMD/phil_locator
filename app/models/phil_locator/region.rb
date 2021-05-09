module PhilLocator
  class Region < ActiveYaml::Base
    include ActiveHash::Associations

    set_root_path self.module_parent.data_root_path(:yaml)
    set_filename "regions"

    has_many :provinces, class_name: "PhilLocator::Province", foreign_key: :region_code, primary_key: :region_code
    delegate :cities, to: :provinces

    alias_attribute :psgcCode, :code

    def alias
      self[:name].split("(").last.delete(")")
    end

    def cities
      PhilLocator::City.where(province_code: provinces.map(&:province_code))
    end

    def municipalities
      PhilLocator::Municipality.where(province_code: provinces.map(&:province_code))
    end

    def name
      self[:name].split("(").first.delete("(")
    end
  end
end
