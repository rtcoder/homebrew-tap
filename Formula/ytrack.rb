class Ytrack < Formula
  desc "YouTrack CLI with global and per-project configuration"
  homepage "https://github.com/rtcoder/ytrack"
  license "MIT"
  version "0.1.15"
  head "https://github.com/rtcoder/ytrack.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.15/ytrack_0.1.15_darwin_arm64.tar.gz"
      sha256 "5cd18cf6fcb38c2cd8ea32d9e38c161225090e78823edcb20e93f1b8ae4287ad"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.15/ytrack_0.1.15_darwin_amd64.tar.gz"
      sha256 "c5c43758b42c56e6d44252bb1fb1f288c807afe314f57de762fe58be068f1e79"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.15/ytrack_0.1.15_linux_arm64.tar.gz"
      sha256 "f25bf99ec0b68f728c688a3cf1915e438ed1d01958857a9297793a842d5cf646"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.15/ytrack_0.1.15_linux_amd64.tar.gz"
      sha256 "4220553d4527630b698e378206a6f196c9753f9f90eb11fbd3434b6dc52bb361"
    end
  end

  def install
    bin.install "ytrack"
  end

  test do
    assert_match "Manage YouTrack issues", shell_output("#{bin}/ytrack --help")
  end
end
