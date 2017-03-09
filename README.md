[![Build Status](https://travis-ci.org/maverick9000/canada_eh.png?branch=master)](https://travis-ci.org/maverick9000/canada_eh) [![Coverage Status](https://img.shields.io/coveralls/maverick9000/canada_eh.svg)](https://coveralls.io/r/maverick9000/canada_eh?branch=master) [![Gem Version](https://badge.fury.io/rb/canada_eh.svg)](http://badge.fury.io/rb/canada_eh)

# CanadaEh

This ruby gem gives you Canada categorized by provinces and their capitals, territories and their capitals as well as all the official cities in each province and territory. 

## Installation

Add this line to your application's Gemfile:

    gem 'canada_eh'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install canada_eh

## Usage

###Example###

    CanadaEh.just_provinces.collect{|p|p.name}

    ["Alberta", "British Columbia", "Manitoba", "New Brunswick", "Newfoundland and Labrador", "Nova Scotia", "Ontario", "Prince Edward Island", "Quebec", "Saskatchewan"]

###Here is some more stuff you can do###

    CanadaEh.just_territories.collect{|p|p.name}

Get the capital cities of Canada:

    CanadaEh.capital_cities

Get the name of the province of a particular city:

    CanadaEh::City.find_by_name('Toronto').province.name

Get the number of cities in a province:

    CanadaEh::Province.find_by_name('Quebec').cities.length

Get the capital of a territory/province:

    CanadaEh::Province.find_by_name('Yukon').capital.name

Determine whether the province...is a province, or a territory:

    CanadaEh::Province.find_by_name('Yukon').is_territory

Get the Postal abbreviations of each province/territory:

    CanadaEh::Province.find_by_name('Ontario').abbreviation
