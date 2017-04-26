module VhodEnvironmentFavicon::ApplicationHelperPatch
  extend ActiveSupport::Concern

  included do

    def choose_favicon

      ico_path = '/assets/vhod_environment_favicon/images/'

      if User.current.admin?

        case Rails.env
          when 'development'
            "#{ico_path}dev.ico"
          when 'test'
            "#{ico_path}test.ico"
          when 'production'
            "#{ico_path}prod.ico"
          else
            "#{ico_path}dev.ico"
        end

      else
        "#{ico_path}user.ico"
      end
    end

  end

end