# Phil Locator

## Build Status
[![Maintainability](https://api.codeclimate.com/v1/badges/9cc2694e0d4b21080edc/maintainability)](https://codeclimate.com/github/tenshiAMD/phil_locator/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/9cc2694e0d4b21080edc/test_coverage)](https://codeclimate.com/github/tenshiAMD/phil_locator/test_coverage)

## Description
Provides registry records for `regions`, `cities`, `provinces`, and `barangays` in the Philippines.

## Installation

In Gemfile:
```
gem "phil_locator", "~> 1.1.0"
```

Or, from the command line:
```
gem install phil_locator -v "~> 1.1.0"
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

## Copyright

Copyright (c) 2019 Angel Aviel Domaoan, released under the [MIT license](/LICENSE).
