require "bundler/setup"
require "test_driven_dungeons"
require_relative '../lib/test_driven_dungeons/campaign'
require_relative '../lib/test_driven_dungeons/player'
require_relative '../lib/test_driven_dungeons/character'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
