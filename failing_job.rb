require 'rubygems'
require 'resque'
require 'ansi'

module FailingJob
  @queue = :default

  def self.perform(params)
    raise "JOB FAILED"
  end
end
