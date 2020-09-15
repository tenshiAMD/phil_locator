module PhilLocator
  class Configuration
    attr_accessor :data_root_path

    def initialize
      @data_root_path = [PhilLocator.gem_full_path, "lib/datasets"].join("/")
    end
  end
end
