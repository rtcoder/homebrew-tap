class Ytrack < Formula
  desc "YouTrack CLI with global and per-project configuration"
  homepage "https://github.com/rtcoder/ytrack"
  license "MIT"
  version "0.1.17"
  head "https://github.com/rtcoder/ytrack.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.17/ytrack_0.1.17_darwin_arm64.tar.gz"
      sha256 "a791d173cd517bad7018995c46f8190cb7f1a352e627511582ea4e3e20b45398"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.17/ytrack_0.1.17_darwin_amd64.tar.gz"
      sha256 "d5771ed061f1dc3a38f55d153159627ad699aa960437cfb0d35a2e4db1364c70"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.17/ytrack_0.1.17_linux_arm64.tar.gz"
      sha256 "e04f830736e67415def442b2b2c719ff783742ed92a62fcf2f41ddb50d34af53"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.17/ytrack_0.1.17_linux_amd64.tar.gz"
      sha256 "80198037b76d4c23e878ab0efcf146f2c8fd92274cd484aa8099cdc51384843c"
    end
  end

  def install
    bin.install "ytrack"
  end

  test do
    assert_match "Manage YouTrack issues", shell_output("#{bin}/ytrack --help")
  end
end
