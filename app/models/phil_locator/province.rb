module PhilLocator
  class Province < ActiveYaml::Base
    include ActiveHash::Associations

    set_root_path self.module_parent.data_root_path(:yaml)
    set_filename "provinces"

    belongs_to :region, class_name: "PhilLocator::Region",
                        foreign_key: :region_code, primary_key: :region_code

    has_many :cities, class_name: "PhilLocator::City",
                      foreign_key: :province_code, primary_key: :province_code

    has_many :cities, class_name: "PhilLocator::Municipality",
                      foreign_key: :municipality_code, primary_key: :municipality_code

    alias_attribute :psgcCode, :code
  end
end
