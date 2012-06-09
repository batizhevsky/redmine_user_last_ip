require 'redmine'
require 'dispatcher'
require 'user_last_ip/hooks'

Redmine::Plugin.register :redmine_user_last_ip do
  name 'Show last user ip address'
  author 'Leonid Batizhevsky'
  description 'Plugin show last user ip address'
  version '0.0.1'
  url 'https://github.com/leonko/redmine_user_last_ip'
  requires_redmine :version_or_higher => '0.9.0'
end
