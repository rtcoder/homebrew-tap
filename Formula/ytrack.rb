class Ytrack < Formula
  desc "YouTrack CLI with global and per-project configuration"
  homepage "https://github.com/rtcoder/ytrack"
  license "MIT"
  version "0.1.1"
  head "https://github.com/rtcoder/ytrack.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.1/ytrack_0.1.1_darwin_arm64.tar.gz"
      sha256 "515506433d0fe6844544bbc8132c1605af243c76e26574f5ca1d9a22df34dd79"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.1/ytrack_0.1.1_darwin_amd64.tar.gz"
      sha256 "6b3c76b27de115267319939a2baf0f6bfe8ddb16abd20b11c2f7dae609bfcc2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.1/ytrack_0.1.1_linux_arm64.tar.gz"
      sha256 "4d509a69b6de3dddd197961f7412f401f8c3aa1cacc7cb73d6d4f4bf04bdbfe5"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.1/ytrack_0.1.1_linux_amd64.tar.gz"
      sha256 "43299ef662af8fc9784e590b33acb6b2e65c6315be221922ae6a05fad36f2a0a"
    end
  end

  def install
    bin.install "ytrack"
  end

  test do
    assert_match "Manage YouTrack issues", shell_output("#{bin}/ytrack --help")
  end
end
