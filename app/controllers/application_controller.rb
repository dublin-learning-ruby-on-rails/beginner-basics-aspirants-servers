class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :my_server?, :has_server?

  def my_server?(server)
    request.session.id == server.session_id
  end

  def has_server?
    Server.exists?(session_id: request.session.id)
  end

  def render_forbidden
    render text: 'Forbidden', status: :forbidden
  end
end
