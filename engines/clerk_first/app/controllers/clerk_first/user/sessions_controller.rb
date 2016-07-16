require_dependency "clerk_first/application_controller"

module ClerkFirst
  class User::SessionsController < Devise::SessionsController

    #before_filter :configure_permitted_parameters, if: :devise_controller?
    layout 'clerk_first/application', only: [:new, :create, :delete]

    def new
      super
    end

    def create
      super
    end

    def destroy
      super
    end

    protected


  end
end