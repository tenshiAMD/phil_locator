source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gemspec

group :development, :test do
  gem "rubocop", ">= 1.10.0", require: false
  gem "rubocop-packaging", ">= 0.5.1", require: false
  gem "rubocop-performance", ">= 1.9.2", require: false
  gem "rubocop-rails", ">= 2.9.1", require: false
end
