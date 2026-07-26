class Ytrack < Formula
  desc "YouTrack CLI with global and per-project configuration"
  homepage "https://github.com/rtcoder/ytrack"
  license "MIT"
  version "0.1.12"
  head "https://github.com/rtcoder/ytrack.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.12/ytrack_0.1.12_darwin_arm64.tar.gz"
      sha256 "a584e601c6223111b0a8b64d2c3808e3bca685040698fb2ca2a2f32ca3264b6b"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.12/ytrack_0.1.12_darwin_amd64.tar.gz"
      sha256 "88e44262c667d9f3837db438c3de1240af018d905723eea3ff091f5762982f57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.12/ytrack_0.1.12_linux_arm64.tar.gz"
      sha256 "cef0f6100efede4d27f7b66486003e68ae25dc963916255394c8e0f3227e4c7d"
    else
      url "https://github.com/rtcoder/ytrack/releases/download/v0.1.12/ytrack_0.1.12_linux_amd64.tar.gz"
      sha256 "dd45267c81c0c4fa68f8cdd7f70269fb06d2de93d0e935c9d2fab9871d44cdad"
    end
  end

  def install
    bin.install "ytrack"
  end

  test do
    assert_match "Manage YouTrack issues", shell_output("#{bin}/ytrack --help")
  end
end
