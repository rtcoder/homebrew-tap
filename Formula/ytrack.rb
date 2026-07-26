class Ytrack < Formula
  desc "YouTrack CLI with global and per-project configuration"
  homepage "https://github.com/rtcoder/ytrack"
  license "MIT"
  version "0.1.3"
  head "https://github.com/rtcoder/ytrack.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.3/ytrack_0.1.3_darwin_arm64.tar.gz"
      sha256 "62bb5d024f326ee250736ad645759d3a07e75748cae4858d6352c29643b0cede"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.3/ytrack_0.1.3_darwin_amd64.tar.gz"
      sha256 "d1e7cc3466cea2238ba0a13fa30f02b05e21343f635cac1780f90b2313602264"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.3/ytrack_0.1.3_linux_arm64.tar.gz"
      sha256 "f5a126affbec253ddec7524f13fded802ffd28aef76eddace597db1153320058"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.3/ytrack_0.1.3_linux_amd64.tar.gz"
      sha256 "35ea99c2ff3843cce22440b2ecb6d3246789a0f9b2f987341a60f921180be172"
    end
  end

  def install
    bin.install "ytrack"
  end

  test do
    assert_match "Manage YouTrack issues", shell_output("#{bin}/ytrack --help")
  end
end
