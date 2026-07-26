class Ytrack < Formula
  desc "YouTrack CLI with global and per-project configuration"
  homepage "https://github.com/rtcoder/ytrack"
  license "MIT"
  version "0.1.11"
  head "https://github.com/rtcoder/ytrack.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.11/ytrack_0.1.11_darwin_arm64.tar.gz"
      sha256 "4179fff604cd3b2bf9731e54538b9a0a70a1f42afd9a49b41df73c88df4405a9"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.11/ytrack_0.1.11_darwin_amd64.tar.gz"
      sha256 "8f826505a705d81cd013291ecb938bc417a1c77879f30a730ab9779f78e2fe16"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.11/ytrack_0.1.11_linux_arm64.tar.gz"
      sha256 "0c6e2c8e1c927cededfb0e3d1b40c39b1d4650189fc367594beb2eaa89f5a590"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.11/ytrack_0.1.11_linux_amd64.tar.gz"
      sha256 "bba9efe0ddecbe9704ae23a918c5137831847d41ac1d38087da85fc1e1627637"
    end
  end

  def install
    bin.install "ytrack"
  end

  test do
    assert_match "Manage YouTrack issues", shell_output("#{bin}/ytrack --help")
  end
end
