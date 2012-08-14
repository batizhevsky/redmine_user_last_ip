module UserLastIp
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_account_left_bottom, :partial => 'user/last_ip'
    def controller_account_success_authentication_after(context={})
      c_user = context[:user]
      c_user.write_attribute(:last_ip,context[:request].remote_ip)
      c_user.save
      Logger.new(STDOUT).info("\n#{c_user}(#{c_user.mail}) was logined from #{context[:request].remote_ip} \n")
    end
  end
end
