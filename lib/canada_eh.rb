require "canada_eh/version"
require 'active_hash'

module CanadaEh
  def self.just_provinces
    CanadaEh::Province.where(:is_territory => false)
  end

  def self.just_territories
    CanadaEh::Province.where(:is_territory => true)
  end

  def self.capital_cities
    CanadaEh::City.where(:is_capital => true)
  end

  class Province < ActiveJSON::Base
    set_root_path "#{File.dirname(__FILE__)}/canada_eh"
    set_filename "provinces"
    include ActiveHash::Associations
    has_many :cities, :class_name => 'CanadaEh::City'

    def capital
      CanadaEh::City.where(:province_id => self.id, :is_capital => true).first
    end
  end

  class City < ActiveJSON::Base
    set_root_path "#{File.dirname(__FILE__)}/canada_eh"
    use_multiple_files
    set_filenames "alberta", "british_columbia", "manitoba", "new_brunswick", "newfoundland_and_labrador", "northwest_territories", "nova_scotia", "nunavut", "ontario", "prince_edward_island", "quebec", "saskatchewan", "yukon"
    include ActiveHash::Associations
    belongs_to :province, :class_name => 'CanadaEh::Province'
  end
end
