module Team
  class Engine < ::Rails::Engine
    isolate_namespace Team

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
    end

    initializer :team do |app|
      
      # Expand App migrate path
      config.paths["db/migrate"].expanded.each do |expanded_path|
        app.config.paths["db/migrate"] << expanded_path
      end

      # Define Active Admin resource path if is defined
      if defined?(ActiveAdmin)
        ActiveAdmin.application.load_paths.unshift Dir[File.dirname(__FILE__) + "/../admin"]
      end
    end

  end
end
