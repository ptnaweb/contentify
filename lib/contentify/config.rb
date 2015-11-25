require "active_support/configurable"

module Contentify
  class Config
    include ActiveSupport::Configurable
    config_accessor :data_source, :org_name, :cms_title

    configure do |config|
      config.data_source = :default
      config.org_name    = 'Contentify'
      config.cms_title   = 'Contentify'
    end

    def cms_title_limit_18_charactors
      cms_title[0, 18]
    end
  end
end
