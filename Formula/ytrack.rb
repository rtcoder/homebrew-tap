class Ytrack < Formula
  desc "YouTrack CLI with global and per-project configuration"
  homepage "https://github.com/rtcoder/ytrack"
  license "MIT"
  version "0.1.5"
  head "https://github.com/rtcoder/ytrack.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.5/ytrack_0.1.5_darwin_arm64.tar.gz"
      sha256 "a850d07c2b4cabce1f2c571b8b6d21b50381fe929b74ed1198de22547d2094bd"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.5/ytrack_0.1.5_darwin_amd64.tar.gz"
      sha256 "73cabb4a9a21d697e5a56ebc4964cf53d2a39331cb3a350de37cb495da717440"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.5/ytrack_0.1.5_linux_arm64.tar.gz"
      sha256 "447fb58e7a4bf51c715cad36f43857237087f3dab20a7c6488a61c5bf625818a"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.5/ytrack_0.1.5_linux_amd64.tar.gz"
      sha256 "7f675358c355a7ba5c0bcd5ddf0e20249e6233f77f10e641b9df4bd53555b4cd"
    end
  end

  def install
    bin.install "ytrack"
  end

  test do
    assert_match "Manage YouTrack issues", shell_output("#{bin}/ytrack --help")
  end
end
