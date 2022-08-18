Gem::Specification.new do |s|
  s.platform      = Gem::Platform::RUBY
  s.name          = "phil_locator"
  s.version       = File.read(File.expand_path("VERSION", __dir__)).strip
  s.summary       = "Registry records for regions, cities, and provinces in the Philippines."
  s.description   = "Provides registry records for regions, cities, and provinces in the Philippines."

  s.required_ruby_version     = ">= 2.7.0"
  s.required_rubygems_version = ">= 2.7.7"

  s.license       = "MIT"

  s.author        = "Angel Aviel Domaoan"
  s.email         = "dev.tenshiamd@gmail.com"
  s.homepage      = "https://github.com/tenshiAMD/phil_locator"

  if s.respond_to?(:metadata)
    s.metadata["bug_tracker_uri"] = [s.homepage, "issues"].join("/")
    s.metadata["source_code_uri"] = [s.homepage, "tree", "v#{s.version}"].join("/")
  end

  s.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_path  = "lib"

  s.add_dependency "active_hash", "~> 2.3.0"
end
