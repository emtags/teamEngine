
if defined?(ActiveAdmin)
  ActiveAdmin.register Team::Person, as: "Person" do
    menu parent: "Site"
  end
end