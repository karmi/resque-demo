require 'rubygems'
require 'resque'
require 'resque/status'
require 'resque/job_with_status'

class SleepyJob < Resque::JobWithStatus

  @queue = :default

  def perform
    total = 100
    num = 0
    while num < total
      at(num, total, "At #{num} of #{total}")    # Report progress here
      sleep(1)                                   # Do your thing ...
      num += 1
    end
    completed                                    # We are DONE
  end
  
end
