#!/usr/bin/env ruby

require 'statistical_array/statistical_array'
require 'statistical_array/aliases'
require 'statistical_array/array_template'
require 'statistical_array/version'

if __FILE__ == $0
  include StatisticalArray
  a = StatsArray.new ARGV.map { |i| i.include?('.') ? i.to_f : i.to_i }
  a.print
end
