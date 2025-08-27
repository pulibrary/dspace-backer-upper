# Set up zeitwerk autoloading.
require "zeitwerk"
loader = Zeitwerk::Loader.new
loader.push_dir(__dir__)

loader.setup
