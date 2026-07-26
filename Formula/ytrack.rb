class Ytrack < Formula
  desc "YouTrack CLI with global and per-project configuration"
  homepage "https://github.com/rtcoder/ytrack"
  license "MIT"
  version "0.1.7"
  head "https://github.com/rtcoder/ytrack.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.7/ytrack_0.1.7_darwin_arm64.tar.gz"
      sha256 "cf636f32675ab8f3a3438e6459e294c425788677aa143eed04e8b55030faf2f6"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.7/ytrack_0.1.7_darwin_amd64.tar.gz"
      sha256 "e18e9fa4375ad199965a5f8337133977d9e01a8ca607f47475f763da82c804e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.7/ytrack_0.1.7_linux_arm64.tar.gz"
      sha256 "fef70810ff8ca8d17f9e8729ae3c4ec97540fcc0e87fe6fc3b168309cbb37e93"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.7/ytrack_0.1.7_linux_amd64.tar.gz"
      sha256 "601f8e598f9d4f78292c7ba0886fe56fe28299ae6c00971bf306ec0dc583a6d5"
    end
  end

  def install
    bin.install "ytrack"
  end

  test do
    assert_match "Manage YouTrack issues", shell_output("#{bin}/ytrack --help")
  end
end
