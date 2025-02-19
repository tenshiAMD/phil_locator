source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gemspec

group :development, :test do
  gem "rubocop", ">= 1.25.1", require: false
  gem "rubocop-minitest", ">= 0.37.1", require: false
  gem "rubocop-packaging", require: false
  gem "rubocop-performance", ">= 1.24.0", require: false
  gem "rubocop-rails", ">= 2.30.0", require: false
  gem "rubocop-md", ">= 2.0.0", require: false
end
