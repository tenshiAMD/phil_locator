Gem::Specification.new do |s|
  s.platform      = Gem::Platform::RUBY
  s.name          = "phil_locator"
  s.version       = "1.0.0.pre"
  s.summary       = "Provides registry records for regions, cities, and provinces in the Philippines."
  s.description   = s.summary

  s.required_ruby_version     = ">= 2.5.3"
  s.required_rubygems_version = ">= 2.7.7"

  s.author        = "Angel Aviel Domaoan"
  s.email         = "dev.tenshiamd@gmail.com"
  s.homepage      = "https://tenshiamd.com"
  s.license       = "MIT"

  s.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_path  = "lib"

  s.add_dependency "active_hash", "~> 2.3.0"
end
