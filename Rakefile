require 'resque/tasks'    # Require Resque tasks

require './basic_job.rb'       # Require jobs
require './progress_job.rb'

namespace :workers do

  desc "Launch single worker for processing jobs"
  task :start do
    ENV['QUEUE']   ||= 'default'
    puts "=== Launching single worker on '#{ENV['QUEUE']}' queue(s) with PID #{Process.pid}"
    Rake::Task['resque:work'].invoke
  end

end
