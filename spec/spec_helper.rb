require "httparty"
require "rspec/expectations"
require "rspec/matchers"
require "json_matchers/rspec"
require "allure-rspec"

require_relative "../services/viacep_api"

RSpec.configure do |config|

  include ViaCep

  CEPS = YAML.load_file(File.dirname(__dir__) + "/support/config/ceps.yml")

  JsonMatchers.schema_root = "./support/data/schemas/"
  config.formatter = AllureRspecFormatter

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end

AllureRspec.configure do |config|
  config.results_directory = 'allure-results'
  config.clean_results_directory = true
end
