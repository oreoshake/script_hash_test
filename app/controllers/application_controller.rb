class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  ensure_security_headers


  # before_filter :log_partial_events

	# def log_partial_events
	#   @partial_events = []
	#   @hashes = []
	#   ActiveSupport::Notifications.subscribe("render_partial.action_view") do |event_name, start_at, end_at, id, payload|
	#   	@partial_events << payload[:identifier]
	#   	@hashes << SCRIPT_HASHES[payload[:identifier].gsub(Rails.root.to_s, "")].join(" ")


	#   	response.headers['csp_thing'] ||= response.headers['csp_thing'].to_s + SCRIPT_HASHES[payload[:identifier].gsub(Rails.root.to_s, "")].join(" ")
	#   end
	# end
end
