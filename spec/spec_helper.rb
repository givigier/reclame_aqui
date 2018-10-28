require "reclame_aqui"
require "simplecov"

RSpec.configure do |config|
  SimpleCov.start

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
