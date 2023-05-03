# static controller
class StaticController < ActionController::Base
    layout 'static'

    def home
      render '/layouts/home'
    end
end
