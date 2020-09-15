module PhilLocator
  class Municipality < ActiveYaml::Base
    include ActiveHash::Associations

    set_root_path self.module_parent.data_root_path(:yaml)
    set_filename "municipalities"

    belongs_to :province, class_name: "PhilLocator::Province", foreign_key: :province_code, primary_key: :province_code
    delegate :region, to: :province

    has_many :barangay, class_name: "PhilLocator::Barangay",
                        foreign_key: :municipality_code, primary_key: :municipality_code

    alias_attribute :psgcCode, :code
  end
end
