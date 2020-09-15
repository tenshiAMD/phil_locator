module PhilLocator
  class Barangay < ActiveYaml::Base
    include ActiveHash::Associations

    set_root_path self.module_parent.data_root_path(:yaml)
    set_filename "barangays"

    belongs_to :province, class_name: "PhilLocator::Province",
                          foreign_key: :province_code, primary_key: :province_code
    delegate :region, to: :province

    alias_attribute :psgcCode, :code

    def method_missing(method_name, *args, &block)
      case method_name.to_sym
      when :city
        PhilLocator::City.find_by(city_code: urbanRuralCode)
      when :municipality
        PhilLocator::Municipality.find_by(municipality_code: urbanRuralCode)
      else
        super
      end
    end

    def type
      urbanRural ? "urban" : "rural"
    end
  end
end
