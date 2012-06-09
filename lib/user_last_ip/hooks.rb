module UserLastIp
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_account_left_bottom, :partial => 'user/last_ip'
    def controller_account_success_authentication_after(context={})
      context[:user].write_attribute(:last_ip,context[:request].remote_ip)
      context[:user].save
    end
  end
end
