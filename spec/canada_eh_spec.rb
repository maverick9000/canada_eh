require 'spec_helper'

describe CanadaEh do
  it 'returns 13 provinces and territories' do
    expect(CanadaEh::Province.all.length).to eq(13)
  end

  it 'identifies Nunavut, Yukon and Northwest Territories as...territories' do
    expect(CanadaEh::Province.find_by_name('Yukon').is_territory).to be(true)
    expect(CanadaEh::Province.find_by_name('Nunavut').is_territory).to be(true)
    expect(CanadaEh::Province.find_by_name('Northwest Territories').is_territory).to be(true)
  end

  it 'identifies Ontario as not a territory' do
    expect(CanadaEh::Province.find_by_name('Ontario').is_territory).to be(false)
  end

  it 'returns 10 provinces in Canada' do
    expect(CanadaEh.just_provinces.length).to eq(10)
  end

  it 'returns 3 territories in Canada' do
    expect(CanadaEh::just_territories.length).to eq(3)
  end

  it 'identifies ON as the abbreviation for Ontaio' do
    expect(CanadaEh::Province.find_by_name('Ontario').abbreviation).to eq('ON')
  end

  it 'returns Edmonton as the Capital of Alberta' do
    expect(CanadaEh::Province.find_by_name('Alberta').capital.name).to eq('Edmonton')
  end

  it 'returns Victoria as the Capital of British Columbia' do
    expect(CanadaEh::Province.find_by_name('British Columbia').capital.name).to eq('Victoria')
  end

  it 'returns Winnipeg as the Capital of Manitoba' do
    expect(CanadaEh::Province.find_by_name('Manitoba').capital.name).to eq('Winnipeg')
  end

  it "returns St. John's as the Capital of Newfoundland and Labrador" do
    expect(CanadaEh::Province.find_by_name('Newfoundland and Labrador').capital.name).to eq("St. John's")
  end

  it 'returns Halifax as the Capital of Nova Scotia' do
    expect(CanadaEh::Province.find_by_name('Nova Scotia').capital.name).to eq('Halifax')
  end

  it 'returns Toronto as the Capital of Ontario' do
    expect(CanadaEh::Province.find_by_name('Ontario').capital.name).to eq('Toronto')
  end
  it 'returns Charlottetown as the Capital of Prince Edward Island' do
    expect(CanadaEh::Province.find_by_name('Prince Edward Island').capital.name).to eq('Charlottetown')
  end

  it 'returns Québec as the Capital of Quebec' do
    expect(CanadaEh::Province.find_by_name('Quebec').capital.name).to eq('Québec')
  end

  it 'returns Regina as the Capital of Saskatchewan' do
    expect(CanadaEh::Province.find_by_name('Saskatchewan').capital.name).to eq('Regina')
  end

  it 'returns Yellowknife as the Capital of Northwest Territories' do
    expect(CanadaEh::Province.find_by_name('Northwest Territories').capital.name).to eq('Yellowknife')
  end

  it 'returns Iqaluit as the Capital of Nunavut' do
    expect(CanadaEh::Province.find_by_name('Nunavut').capital.name).to eq('Iqaluit')
  end

  it 'returns Whitehorse as the Capital of Yukon' do
    expect(CanadaEh::Province.find_by_name('Yukon').capital.name).to eq('Whitehorse')
  end

  it 'returns 13 capital cities' do
    expect(CanadaEh.capital_cities.length).to eq(13)
  end

  it 'returns 17 cities in Alberta' do
    expect(CanadaEh::Province.find_by_name('Alberta').cities.length).to eq(17)
  end

  it 'returns 50 cities in British Columbia' do
    expect(CanadaEh::Province.find_by_name('British Columbia').cities.length).to eq(50)
  end

  it 'returns 10 cities in Manitoba' do
    expect(CanadaEh::Province.find_by_name('Manitoba').cities.length).to eq(10)
  end

  it 'returns 8 cities in New Brunswick' do
    expect(CanadaEh::Province.find_by_name('New Brunswick').cities.length).to eq(8)
  end

  it 'returns 3 cities in Newfoundland and Labrador' do
    expect(CanadaEh::Province.find_by_name('Newfoundland and Labrador').cities.length).to eq(3)
  end

  it 'returns 1 city in Northwest Territories' do
    expect(CanadaEh::Province.find_by_name('Northwest Territories').cities.length).to eq(1)
  end

  it 'returns 3 cities in Nova Scotia' do
    expect(CanadaEh::Province.find_by_name('Nova Scotia').cities.length).to eq(3)
  end

  it 'returns 1 cities in Nunavut' do
    expect(CanadaEh::Province.find_by_name('Nunavut').cities.length).to eq(1)
  end

  it 'returns 51 cities in Ontario' do
    expect(CanadaEh::Province.find_by_name('Ontario').cities.length).to eq(51)
  end

  it 'returns 2 cities in Prince Edward Island' do
    expect(CanadaEh::Province.find_by_name('Prince Edward Island').cities.length).to eq(2)
  end

  it 'returns 222 cities in Quebec' do
    expect(CanadaEh::Province.find_by_name('Quebec').cities.length).to eq(222)
  end

  it 'returns 17 cities in Saskatchewan' do
    expect(CanadaEh::Province.find_by_name('Saskatchewan').cities.length).to eq(17)
  end

  it 'should return Ontario as the province of Toronto' do
    expect(CanadaEh::City.find_by_name('Toronto').province.name).to eq('Ontario')
  end
end
