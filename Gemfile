source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gemspec

group :development, :test do
  gem "rubocop", ">= 0.74.0", require: false
  gem "rubocop-junit-formatter"
  gem "rubocop-performance", require: false
  gem "rubocop-rails", "~> 2.0.1", require: false
end
