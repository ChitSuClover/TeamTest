require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module DevExam
  class Application < Rails::Application
    config.generators do |g|
      g.scaffold_controller false
      g.assets false
      g.helper false
    end
  end
end
