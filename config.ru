# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
require 'raw_json'
use Rack::RawJSON
run Rails.application
