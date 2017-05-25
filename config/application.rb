require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module ColBlog
  class Application < Rails::Application
    config.load_defaults 5.1
    config.time_zone = 'Tokyo'
    config.i18n.default_locale = :ja
    config.active_record.default_timezone = :local
  end
end
