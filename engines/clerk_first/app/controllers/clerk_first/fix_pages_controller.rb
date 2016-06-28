require_dependency "clerk_first/application_controller"

module ClerkFirst
  class FixPagesController < ApplicationController
    def home
      render :text => "MyClerk first page!"
    end
  end
end