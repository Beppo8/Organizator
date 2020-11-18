class ApplicationController < ActionController::Base
  before_action :set_locale

  before_action :authenticate_user!

  rescue_from Cancan::AccessDenied do |exception|
    redirect_to root_path
  end

  def set_locale
    I18n.locale = 'es'
  end
end
