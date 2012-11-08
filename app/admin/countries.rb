ActiveAdmin.register Country do

  belongs_to :continent

  index do
    column :name
    default_actions
    column "Associations" do |country|
      link_to "Cities", admin_continent_country_cities_path(country.continent, country)
    end
  end

end
