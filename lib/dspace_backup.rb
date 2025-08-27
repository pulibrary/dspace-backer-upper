require "bundler/setup"
Bundler.require
require_relative "autoloader"
require "active_support/all"
class DspaceBackup
  def self.download_path
    if ENV["DSPACE_DOWNLOAD_PATH"]
      Pathname.new(ENV["DSPACE_DOWNLOAD_PATH"])
    else
      Pathname.new(__dir__).join("../tmp/dspace_download")
    end
  end

  def self.logger
    @logger ||= Logger.new($stdout)
  end
end
