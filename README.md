# Phil Locator

[![Gem Version](https://badge.fury.io/rb/phil_locator.svg)](https://badge.fury.io/rb/phil_locator)

## Build Status
[![Maintainability](https://api.codeclimate.com/v1/badges/9cc2694e0d4b21080edc/maintainability)](https://codeclimate.com/github/tenshiAMD/phil_locator/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/9cc2694e0d4b21080edc/test_coverage)](https://codeclimate.com/github/tenshiAMD/phil_locator/test_coverage)

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
    config.data_root_path = Rails.root.join("data").to_s
end
```

## Copyright

Copyright (c) 2019 Angel Aviel Domaoan, released under the [MIT license](/LICENSE).
