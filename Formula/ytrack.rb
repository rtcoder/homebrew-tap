class Ytrack < Formula
  desc "YouTrack CLI with global and per-project configuration"
  homepage "https://github.com/rtcoder/ytrack"
  license "MIT"
  version "0.1.6"
  head "https://github.com/rtcoder/ytrack.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.6/ytrack_0.1.6_darwin_arm64.tar.gz"
      sha256 "147aadba40a17f34083bd0f6034557346b4edd494d96a65d1172ef963404fea5"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.6/ytrack_0.1.6_darwin_amd64.tar.gz"
      sha256 "35804782cce62bcc86d409d6dc4fef61b6301b20c4e5b68bb0cf036bcee07937"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.6/ytrack_0.1.6_linux_arm64.tar.gz"
      sha256 "6ce322b93fddd71d2e9cdb2bd7285a69809b9c554e2674a20214037356e8878d"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.6/ytrack_0.1.6_linux_amd64.tar.gz"
      sha256 "9e667d3c5ec9473f92af27eaf8c7c10b89ddfddb7566c211e4416d75cd4b26d8"
    end
  end

  def install
    bin.install "ytrack"
  end

  test do
    assert_match "Manage YouTrack issues", shell_output("#{bin}/ytrack --help")
  end
end
