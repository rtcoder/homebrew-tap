class Ytrack < Formula
  desc "YouTrack CLI with global and per-project configuration"
  homepage "https://github.com/rtcoder/ytrack"
  license "MIT"
  version "0.1.13"
  head "https://github.com/rtcoder/ytrack.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.13/ytrack_0.1.13_darwin_arm64.tar.gz"
      sha256 "cd3f46e3d3749b815bd5676305b72727f364d8a3dad7fafd296a332676985fc2"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.13/ytrack_0.1.13_darwin_amd64.tar.gz"
      sha256 "2db75c50dbfb5b769d1cfc952d101be1709f8aab7c0731079ce68802dd1fa7bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.13/ytrack_0.1.13_linux_arm64.tar.gz"
      sha256 "9527b848b89be4a487220510115d25eee00a96d058805ce23a9de4f7fee974fb"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.13/ytrack_0.1.13_linux_amd64.tar.gz"
      sha256 "4e32f74200f9808dda73c3aaf731bbf6404c8594f59c9f6d414f6a740c57ab33"
    end
  end

  def install
    bin.install "ytrack"
  end

  test do
    assert_match "Manage YouTrack issues", shell_output("#{bin}/ytrack --help")
  end
end
