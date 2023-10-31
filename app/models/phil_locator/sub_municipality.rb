module PhilLocator
  class SubMunicipality < ActiveYaml::Base
    include ActiveHash::Associations

    set_root_path module_parent.data_root_path(:yaml)
    set_filename "sub_municipalities"

    belongs_to :district, class_name: "PhilLocator::District",
                          foreign_key: :district_code, primary_key: :district_code

    alias_attribute :psgcCode, :code
  end
end
