require 'rubygems'
require 'resque'
require 'ansi'

module BasicJob
  @queue = :default

  def self.perform(params)
    # === DO THE WORK HERE ====
    sleep                     2
    # =========================
    puts "#{self.name} : PROCESSED".ansi(:green).ansi(:on_black)
    `growlnotify -n "Resque" -m "PROCESSED THE JOB"` rescue nil
  end
end
