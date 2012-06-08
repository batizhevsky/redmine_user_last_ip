require 'redmine'

Redmine::Plugin.register :redmine_user_last_ip do
  name 'Redmine User Last Ip plugin'
  author 'Leonid Batizhevsky'
  description 'Store and show last user ip-address '
  version '0.0.1'
  url 'https://github.com/leonko/redmine_user_last_ip'
end
