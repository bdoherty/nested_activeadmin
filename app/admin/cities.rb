ActiveAdmin.register City do

  belongs_to :continent do
    belongs_to :country
  end

end
