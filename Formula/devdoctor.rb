class Devdoctor < Formula
  desc "Developer diagnostics for humans"
  homepage "https://github.com/rtcoder/devdoctor"
  license "MIT"
  version "1.44.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.44.0/devdoctor-macos-arm64"
      sha256 "6bd53d54cfa4329ee061723a9cb23a683feb5ae28a93be759965da5e3d0de1e9"
    else
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.44.0/devdoctor-macos-x64"
      sha256 "48414d30f8e57a8319aebeeffe572b79d0e74da2ecc54cd87af95e3163abd7eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.44.0/devdoctor-linux-arm64"
      sha256 "1296053f41de538af43b3d21676873c5b126d0cf1231ba1b9dcd69356494e3de"
    else
      url "https://github.com/rtcoder/devdoctor/releases/download/v1.44.0/devdoctor-linux-x64"
      sha256 "ff5a9c659a040d60a2a8a292a2afcf827d8500aade8f5f93f7ff82cf58e3c4d5"
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
