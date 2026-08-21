class Twf < Formula
  desc "Toolchain for designing and validating entire Temporal systems in .twf"
  homepage "https://github.com/jmbarzee/temporal-architect"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.13.0/twf-v0.13.0-darwin-arm64.tar.gz"
      sha256 "d929f7f8ae131188e2e7f4718059af3e8daec4b2a4b74d76643e958a8fd6649f"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.13.0/twf-v0.13.0-darwin-amd64.tar.gz"
      sha256 "01bd6d84773daab95fa02983978cfce92ae61205965739c78b015fcd372fb9a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.13.0/twf-v0.13.0-linux-arm64.tar.gz"
      sha256 "28a8b0338486155ab687968548602c64f8ca7b4c7993191a6024f4603c9590c7"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.13.0/twf-v0.13.0-linux-amd64.tar.gz"
      sha256 "7b23b090445ff0b4916901dee33aabe8c97caeb4723a1bb4d8cd25efd6794ec3"
    end
  end

  def install
    bin.install "twf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twf --version")
  end
end
