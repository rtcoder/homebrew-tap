class Ytrack < Formula
  desc "YouTrack CLI with global and per-project configuration"
  homepage "https://github.com/rtcoder/ytrack"
  license "MIT"
  version "0.1.14"
  head "https://github.com/rtcoder/ytrack.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.14/ytrack_0.1.14_darwin_arm64.tar.gz"
      sha256 "bdac29bee604b02b6e9e2b66ed0f605a934ac75dacc82619ecf46b1cc42f5844"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.14/ytrack_0.1.14_darwin_amd64.tar.gz"
      sha256 "1160e16b1b0f8ceb0cfcf44c0f89526331359253995283731c67d8b6be81eedb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.14/ytrack_0.1.14_linux_arm64.tar.gz"
      sha256 "6ec62cf6994454c207082471bf0e1a96993fbea1d30e700525209dc0f1dfe422"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.14/ytrack_0.1.14_linux_amd64.tar.gz"
      sha256 "e89133b023fb5b1448903b254cde083ada788e0d29759f9c6d75559061738c5b"
    end
  end

  def install
    bin.install "ytrack"
  end

  test do
    assert_match "Manage YouTrack issues", shell_output("#{bin}/ytrack --help")
  end
end
