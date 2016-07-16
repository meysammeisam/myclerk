require_dependency "clerk_first/application_controller"

module ClerkFirst
  class User::RegistrationsController < Devise::RegistrationsController

    before_filter :configure_permitted_parameters, if: :devise_controller?
    layout 'clerk_first/application', only: [:new, :create]

    def new
      super
    end

    def create
      super
    end

    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password) }
    end

  end
end