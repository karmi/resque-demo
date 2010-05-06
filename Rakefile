require 'resque/tasks'    # Require Resque tasks

require 'boring_job'      # Require job class
require 'sleepy_job'      # Require job class

namespace :demo do

  desc "Run single worker on default queue"
  task :one do
    ENV['QUEUE']   ||= 'default'
    puts "=== Launching single worker on '#{ENV['QUEUE']}' queue(s) with PID #{Process.pid}"
    Rake::Task['resque:work'].invoke
  end

  desc "Run three workers on default queue"
  task :three do
    ENV['QUEUE']   ||= 'default'
    ENV['COUNT']   ||= '3'
    puts "=== Launching #{ENV['COUNT']} workers on '#{ENV['QUEUE']}' queue(s) with PID #{Process.pid}"
    Rake::Task['resque:workers'].invoke
  end

end
