class Devdoctor < Formula
  desc "Developer diagnostics for humans"
  homepage "https://github.com/rtcoder/devdoctor"
  license "MIT"
  version "1.42.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.42.0/devdoctor-macos-arm64"
      sha256 "7d32c912a1aedacb86d5cf2577a18fc8154c76de19379e435aee309a5e1f499a"
    else
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.42.0/devdoctor-macos-x64"
      sha256 "ee7966c699cf8b56f3bbfbb5b6188f395d3e4963773ff034121b9cdf2b6d23f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.42.0/devdoctor-linux-arm64"
      sha256 "0becd697b5b4b5cd083d84d5a347cf5b714794b906fc862c8e73ec70c4970f45"
    else
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.42.0/devdoctor-linux-x64"
      sha256 "a2b948a52f19a5259cf79b1198cd4c63a1aaaca5f5a31fdb28c6cb46e76ce7ed"
    end
  end

  def install
    binary = Dir["devdoctor-*"].first
    chmod 0755, binary
    bin.install binary => "devdoctor"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devdoctor --version")
  end
end
