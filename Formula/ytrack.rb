class Ytrack < Formula
  desc "YouTrack CLI with global and per-project configuration"
  homepage "https://github.com/rtcoder/ytrack"
  license "MIT"
  version "0.1.4"
  head "https://github.com/rtcoder/ytrack.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.4/ytrack_0.1.4_darwin_arm64.tar.gz"
      sha256 "0d4f5f63d5c239c585cbf8c674ec9ec138565d220ae2f8db8546e8462eecd114"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.4/ytrack_0.1.4_darwin_amd64.tar.gz"
      sha256 "845816b3fc2fc040a44419d443246990cbaeabf0ec32bc718908794fbecb1f58"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.4/ytrack_0.1.4_linux_arm64.tar.gz"
      sha256 "07ed4f700aed55285753211efa4a5c15197350f46030560cb20ab1a27ca9457b"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.4/ytrack_0.1.4_linux_amd64.tar.gz"
      sha256 "11a785713184484830ac347f5081aa7fbd735250a1f8491878354a994cf48b90"
    end
  end

  def install
    bin.install "ytrack"
  end

  test do
    assert_match "Manage YouTrack issues", shell_output("#{bin}/ytrack --help")
  end
end
