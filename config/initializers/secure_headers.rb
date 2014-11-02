::SecureHeaders::Configuration.configure do |config|
  config.hsts = {:max_age => 20.years.to_i, :include_subdomains => true}
  config.x_frame_options = 'DENY'
  config.x_content_type_options = "nosniff"
  config.x_xss_protection = {:value => 1, :mode => 'block'}
  # config.csp = false
  config.csp = {
    :enforce => true,
    :default_src => "self",
    :script_src => 'self',
    :script_hash_middleware => true,
    :script_hashes => ['sha1-abc12345'],
    :report_uri => '//example.com/uri-directive',
    :disable_chrome_extension => true,
    :disable_fill_missing => true
  }
end
