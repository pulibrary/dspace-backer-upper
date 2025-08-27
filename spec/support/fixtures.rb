module FixtureHelpers
  def fixture_path
    Pathname.new(__dir__).join("../fixtures")
  end

  def root_path
    Pathname.new(__dir__).join("../../")
  end
end
RSpec.configure do |config|
  config.include FixtureHelpers
end
