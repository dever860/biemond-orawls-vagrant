begin
	require 'coveralls'
	Coveralls.wear!
rescue LoadError
	puts "No Coveralls support"
end

$:.unshift File.expand_path(File.join(File.dirname(__FILE__), '../lib'))
require 'rubygems'
require 'rspec/mocks'
require 'puppet'
require 'puppetlabs_spec_helper/puppetlabs_spec_helper'


RSpec.configure do |configuration|
  configuration.mock_with :rspec do |configuration|
    configuration.syntax = [:expect, :should]
    #configuration.syntax = :should
    #configuration.syntax = :expect
  end
end