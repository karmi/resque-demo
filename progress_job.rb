require 'rubygems'
require 'resque'
require 'resque/status'
require 'resque/job_with_status'

# See https://github.com/quirkey/resque-status

class ProgressJob < Resque::JobWithStatus

  @queue = :default

  def perform
    total = 100
    num = 0
    while num < total
      at(num, total, "At #{num} of #{total}")
      # === DO THE WORK HERE ====
      sleep                   0.2
      # =========================
      num += 1
    end
    completed
    puts "PROCESSED THE JOB"
  end
  
end
