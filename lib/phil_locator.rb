require "active_hash"

require "phil_locator/configuration"
require "phil_locator/version"

module PhilLocator
  extend ActiveSupport::Autoload

  mattr_writer :configuration

  def self.configuration
    @configuration ||= PhilLocator::Configuration.new
  end

  def self.configure
    yield configuration if block_given?
  end

  def self.data_root_path(path = "")
    raise "`#{name}.data_root_path` MUST be a String object." unless configuration.data_root_path.is_a?(String)

    [configuration.data_root_path, path.to_s].join("/")
  end

  def self.gem_full_path
    Gem.loaded_specs[gem_name].full_gem_path
  end

  def self.gem_name
    name.underscore
  end
end

require "phil_locator/engine"
