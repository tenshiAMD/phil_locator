require "active_hash"

module PhilLocator
  extend ActiveSupport::Autoload

  VERSION = "1.0.0".freeze
end

require "phil_locator/engine"
