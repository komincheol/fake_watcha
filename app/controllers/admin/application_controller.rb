class Admin::ApplicationController < ApplicationController
before_action :check_admin
layout 'admin'
private
def check_admin
  #지금접속한 친구가 관리자인지 판별
  #아닐경우 루트페이지
  unless  users_signed_in? && current.user.admin?
  redirect_to(root_path, alert:"관리자 계정으로 로그인 하셔야 되용")
  end

end

end
