plugin_name = :vhod_environment_favicon

Redmine::Plugin.register plugin_name do
  name 'Vhod Environment Favicon'
  description 'Changes favicon in dependency of environment(development, test or production)'
  author 'ELINS'
  version '0.0.1'

  # requires_redmine :version_or_higher => '2.5.0'
  # requires_redmine_plugin :redmine_base_rspec, :version_or_higher => '0.0.3' if Rails.env.test?
  # requires_redmine_plugin :redmine_base_deface, :version_or_higher => '0.0.1'

end

Rails.configuration.to_prepare do
  require_patch plugin_name, %w(application_helper)
end
