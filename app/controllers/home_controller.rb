class HomeController < ApplicationController

  before_filter CASClient::Frameworks::Rails::Filter

  def index
    @username = session[:cas_user]
  end

  def logout
    session[:cas_user] = nil
    redirect_to CASClient::Frameworks::Rails::Filter.client.logout_url
  end

end
