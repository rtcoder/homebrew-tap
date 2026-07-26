class Ytrack < Formula
  desc "YouTrack CLI with global and per-project configuration"
  homepage "https://github.com/rtcoder/ytrack"
  license "MIT"
  version "0.1.18"
  head "https://github.com/rtcoder/ytrack.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.18/ytrack_0.1.18_darwin_arm64.tar.gz"
      sha256 "1e4f8caa31869eab5a3639c83a96b59dd45dd187bbba13e35f2197d048318ae8"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.18/ytrack_0.1.18_darwin_amd64.tar.gz"
      sha256 "fd4dccc306277221bd6aa4e5918555d520d72c08e12996a1174ac6562de2c7e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.18/ytrack_0.1.18_linux_arm64.tar.gz"
      sha256 "06d0d74130eefeb790920c037c30ec8e14ec18ed03729c23f5bae152411a11ae"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.18/ytrack_0.1.18_linux_amd64.tar.gz"
      sha256 "2dbfb0f504232e0dc2676d67be9c2e334240e335c38e4b95f2de77df073e87c7"
    end
  end

  def install
    bin.install "ytrack"
  end

  test do
    assert_match "Manage YouTrack issues", shell_output("#{bin}/ytrack --help")
  end
end
