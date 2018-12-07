require 'rspec'
require_relative '../ecommerce.rb'
require_relative "../lib/random_generator_class/random_generator.rb"

RSpec.configure do |config|
  config.formatter = :documentation
end
