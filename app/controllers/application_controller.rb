class ApplicationController < ActionController::Base
  protect_from_forgery
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
  rescue_from ActionController::UnknownController, with: -> { render_404  }

  def record_not_found
    flash[:notice] = 'The object you tried to access does not exist'
    redirect_to :action => :index
  end

  unless Rails.application.config.consider_all_requests_local # so that in development you would see real exceptions, but not in production.
    rescue_from ActionController::RoutingError, with: -> { render_404  }
  end

  def render_404
    respond_to do |format|
      format.html { render template: 'errors/not_found', status: 404 }
      format.all { render nothing: true, status: 404 }
    end
  end

end
