class Ytrack < Formula
  desc "YouTrack CLI with global and per-project configuration"
  homepage "https://github.com/rtcoder/ytrack"
  license "MIT"
  version "0.1.16"
  head "https://github.com/rtcoder/ytrack.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.16/ytrack_0.1.16_darwin_arm64.tar.gz"
      sha256 "641327123bc9a8444f2f920a59f09387abe62bfbeecd09c2df1c188e2256562f"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.16/ytrack_0.1.16_darwin_amd64.tar.gz"
      sha256 "b63bf0e79b0ef0a5d6809204c5740ecb41980686c83eda366111b3f584a6af1c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.16/ytrack_0.1.16_linux_arm64.tar.gz"
      sha256 "b12b9ae079fed95f745aa14dfd51d7229cda9af20573f7bf83c12e7e208328f2"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.16/ytrack_0.1.16_linux_amd64.tar.gz"
      sha256 "12a4aea6a6601924c7ce0b831d1317ca9be0a20554b9291e7ade6133dbb20b54"
    end
  end

  def install
    bin.install "ytrack"
  end

  test do
    assert_match "Manage YouTrack issues", shell_output("#{bin}/ytrack --help")
  end
end
