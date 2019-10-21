require "active_hash"

require "phil_locator/version"

module PhilLocator
  extend ActiveSupport::Autoload

  mattr_writer :data_root_path

  def self.data_root_path
    @@data_root_path ||= [gem_full_path, "data"].join("/")
  end

  private
    def self.gem_full_path
      Gem.loaded_specs[name.underscore].full_gem_path
    end
end

require "phil_locator/engine"
