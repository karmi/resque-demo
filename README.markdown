Resque Demo
===========

This set of scripts is for demonstration of the [Resque](https://github.com/defunkt/resque), a Ruby/Redis based library for processing background jobs.

Installation
------------

You need a working [Ruby](http://www.ruby-lang.org/en/downloads/), [Rubygems](https://rubygems.org/pages/download) and [Redis](http://redis.io/download) installations.

Install the required Rubygems:

    [sudo] gem install SystemTimer resque resque-status

Usage
-----

1. Run `ruby console` and follow the instructions to put some jobs on the queue
2. Run `rake workers:start` to launch a worker to process your jobs
3. Run `resque-web resque_conf.rb` to see the Resque GUI

-----

(c) 2011 Karel Minarik; http://karmi.cz
