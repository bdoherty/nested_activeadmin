require 'spec_helper'

describe "Admin::CitiesController" do
  before do
    @user = FactoryGirl.create(:admin_user)
    sign_in @user
  end

  before(:each) do
    @continent = Continent.create :name => "Zealandia"
    @country = @continent.countries.create :name => "New Zealand"
    @city = @country.cities.create :name => "Auckland"
  end

  after(:each) do
    @city.destroy
    @country.destroy
    @continent.destroy
  end

  it "Cities on Country of Continent" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    visit admin_continent_country_cities_path(@country.continent, @country)
    page.should have_content 'Auckland'
    click_link "Edit"
    current_path.should == edit_admin_continent_country_city_path(@continent, @country, @city)
  end
  it "Cities on Continent" do
    # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    visit admin_continent_cities_path(@continent)
    page.should have_content 'Auckland'
    click_link "Edit"
    current_path.should == edit_admin_continent_city_path(@continent, @city)
  end
end
