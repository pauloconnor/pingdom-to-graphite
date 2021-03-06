# -*- encoding: utf-8 -*-
$:.unshift File.expand_path("../lib", __FILE__)
require "pingdom-to-graphite/version"

Gem::Specification.new do |s|
  s.name        = "pingdom-to-graphite"
  s.version     = PingdomToGraphite::VERSION
  s.authors     = ["Lew Goettner"]
  s.email       = ["lew@goettner.net"]
  s.homepage    = "https://github.com/lewg/pingdom-to-graphite"
  s.summary     = %q{A command line tool for pulling stats from pingdom and shipping them to graphite.}
  s.description = %q{A tool for copying metrics from Pingdom to graphite. Pingdom, although 
    allowing access to effectively all your metrics through the API, does have some limits 
    in place to prevent abuse. This tool tries to be mindful of that, although does provide a 
    "backfill" option if you care to burn up your daily api limit in one fell swoop.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "bundler", "~> 1.2"
  s.add_runtime_dependency "thor", "~> 0.17"
  s.add_runtime_dependency "pingdom-client", "~> 0.0.6.alpha"
  s.add_runtime_dependency "json", "~> 1.7"
  s.add_runtime_dependency "graphite-metric", "~> 0.3.0"

end