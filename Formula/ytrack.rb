class Ytrack < Formula
  desc "YouTrack CLI with global and per-project configuration"
  homepage "https://github.com/rtcoder/ytrack"
  license "MIT"
  version "0.1.9"
  head "https://github.com/rtcoder/ytrack.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.9/ytrack_0.1.9_darwin_arm64.tar.gz"
      sha256 "eeb6984325913944114c8100528a2ab6d8a3387de60c5b8b3a5e4a838af63482"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.9/ytrack_0.1.9_darwin_amd64.tar.gz"
      sha256 "22b7bf3ca01e8fb52bbeccfb541b8ba8dd2cfaa9f73b3fea1a9c6cf83ef96a48"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.9/ytrack_0.1.9_linux_arm64.tar.gz"
      sha256 "ffa2354b2c119e7d6d1b5d4864f4f08b4b50184e93512c1b6d16843a2a51d3df"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.9/ytrack_0.1.9_linux_amd64.tar.gz"
      sha256 "9741ed2575948250824f233c79ee41e9081bf2469749f5628cd9883e5b9aeef9"
    end
  end

  def install
    bin.install "ytrack"
  end

  test do
    assert_match "Manage YouTrack issues", shell_output("#{bin}/ytrack --help")
  end
end
