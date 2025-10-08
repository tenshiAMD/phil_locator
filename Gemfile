source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gemspec

group :development, :test do
  gem "rubocop", ">= 1.66.0", require: false
  gem "rubocop-minitest", ">= 0.34.0", require: false
  gem "rubocop-packaging", ">= 0.6.0", require: false
  gem "rubocop-performance", ">= 1.20.0", require: false
  gem "rubocop-rails", ">= 2.22.2", require: false
  gem "rubocop-md", ">= 1.2.2", require: false
end
