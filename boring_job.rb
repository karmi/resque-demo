# $LOAD_PATH.unshift File.expand_path('vendor/resque/lib', File.dirname(__FILE__))

require 'rubygems'
require 'resque'

class BoringJob
  @queue = :default

  def self.perform(params)
    sleep 10                                  # Do your thing ...
    puts "#{self.class}: " +                  # We are DONE
         "PROCESSED, my params were: " +
         params.inspect
  end
end
