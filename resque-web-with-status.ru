#!/usr/bin/env ruby

require 'logger'

require 'rubygems'

require 'resque'
require 'resque/server'

require 'resque/status_server'

require 'boring_job'
require 'sleepy_job'

use Rack::ShowExceptions
use Rack::CommonLogger

run Resque::Server.new
