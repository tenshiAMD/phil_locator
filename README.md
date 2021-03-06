# Phil Locator

[![Gem Version](https://badge.fury.io/rb/phil_locator.svg)](https://badge.fury.io/rb/phil_locator)
[![Known Vulnerabilities](https://snyk.io/test/github/tenshiAMD/phil_locator/badge.svg?targetFile=Gemfile.lock)](https://snyk.io/test/github/tenshiAMD/phil_locator?targetFile=Gemfile.lock)
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2FtenshiAMD%2Fphil_locator.svg?type=shield)](https://app.fossa.com/projects/git%2Bgithub.com%2FtenshiAMD%2Fphil_locator?ref=badge_shield)

## Description
Provides registry records for `regions`, `cities`, `provinces`, and `barangays` in the Philippines.

## Installation

In Gemfile:
```
gem "phil_locator", "~> 1.2.0"
```

Or, from the command line:
```
gem install phil_locator -v "~> 1.2.0"
```
    
## Usage

```
# Regions
PhilLocator::Region.all

# Provinces
PhilLocator::Province.all

# Cities
PhilLocator::City.all

# Barangays
PhilLocator::Barangay.all
```

## Configuration

Create an initializer `phil_locator.rb` to configure the options, here's a sample provided below

```
PhilLocator.configure do |config|
    # This overrides the default data directory
    config.data_root_path = Rails.root.join("datasets").to_s
end
```

## Copyright

This project is released under the [MIT license](/LICENSE).


## License
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2FtenshiAMD%2Fphil_locator.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2FtenshiAMD%2Fphil_locator?ref=badge_large)