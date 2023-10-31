module PhilLocator
  class Municipality < ActiveYaml::Base
    include ActiveHash::Associations

    set_root_path module_parent.data_root_path(:yaml)
    set_filename "municipalities"

    belongs_to :province, class_name: "PhilLocator::Province", foreign_key: :province_code, primary_key: :province_code
    delegate :region, to: :province

    alias_attribute :psgcCode, :code
  end
end
