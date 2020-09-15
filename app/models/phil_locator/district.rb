module PhilLocator
  class District < ActiveYaml::Base
    include ActiveHash::Associations

    set_root_path self.module_parent.data_root_path(:yaml)
    set_filename "districts"

    has_many :sub_municipalities, class_name: "PhilLocator::SubMunicipality",
                                  foreign_key: :district_code, primary_key: :district_code

    alias_attribute :psgcCode, :code
  end
end
