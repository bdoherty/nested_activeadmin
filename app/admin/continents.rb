ActiveAdmin.register Continent do

  index do
    column :name
    default_actions
    column "Associations" do |continent|
      links = ''.html_safe
      links << link_to("Countries", admin_continent_countries_path(continent))
      links << tag("br")
      links << link_to("Cities", admin_continent_cities_path(continent))
      links
    end
  end


end
