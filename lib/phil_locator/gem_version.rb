module PhilLocator
  def self.gem_version
    Gem::Version.new VERSION::STRING
  end

  module VERSION
    ARRAY = File.read(File.expand_path("../../VERSION", __dir__)).strip.split(".")

    MAJOR = ARRAY[0]
    MINOR = ARRAY[1]
    TINY  = ARRAY[2]
    PRE   = ARRAY[3]

    STRING = [MAJOR, MINOR, TINY, PRE].compact.join(".")
  end
end
