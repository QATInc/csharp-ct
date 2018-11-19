###########################################
#  This hooks file is required for cucumber to load all prerequisite in order to run the scenarios successfully
# Author : Nicholas Blantz, Scott Miller
# Date Created  : 10/22/2017
# Last Modified : 11/22/2017
# Module : APITemplate
###########################################

# Required gems   
require 'net/http'
require 'uri'
require 'fig_newton'
require 'rspec/expectations'
require 'selenium-webdriver'
require 'watir'
require 'json'

include RSpec::Matchers

# Fig_newton configuration
# FigNewton.yml_directory = "#{Dir.pwd}/../Common/config/"
# if ENV['TESTENV'].nil?
  # env = 'QA1'
# else
  # env = ENV['TESTENV']
# end
# FigNewton.load("common.yml,#{env}.yml")

# Required common classes
# require FigNewton.assertion_class

# Required support class factory
require  "#{Dir.pwd}/features/library/ClassFactory.rb"
chromedriver_path = File.join(File.absolute_path('../..', File.dirname(__FILE__)),"browsers","chromedriver.exe")
Selenium::WebDriver::Chrome.driver_path = chromedriver_path