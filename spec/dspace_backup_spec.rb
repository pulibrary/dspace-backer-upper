RSpec.describe DspaceBackup do
  describe ".download_path" do
    around(:example) do |example|
      existing_env = ENV["DSPACE_DOWNLOAD_PATH"]
      example.run
      ENV["DSPACE_DOWNLOAD_PATH"] = existing_env
    end
    context "when an ENV variable is set" do
      it "returns that" do
        ENV["DSPACE_DOWNLOAD_PATH"] = "/tmp"
        expect(DspaceBackup.download_path.to_s).to eq "/tmp"
      end
    end
    context "when an ENV variable isn't set" do
      it "returns a default" do
        ENV["DSPACE_DOWNLOAD_PATH"] = nil
        expect(DspaceBackup.download_path.to_s).to eq Pathname.new(__dir__).join("../tmp/dspace_download").to_s
      end
    end
  end
end
