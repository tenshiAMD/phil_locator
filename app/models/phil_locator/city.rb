module PhilLocator
  class City < ActiveYaml::Base
    include ActiveHash::Associations

    set_root_path self.module_parent.data_root_path(:yaml)
    set_filename "cities"

    belongs_to :province, class_name: "PhilLocator::Province",
                          foreign_key: :province_code, primary_key: :province_code
    delegate :region, to: :province

    has_many :barangay, class_name: "PhilLocator::Barangay",
                        foreign_key: :city_code, primary_key: :city_code

    alias_attribute :psgcCode, :code
  end
end
