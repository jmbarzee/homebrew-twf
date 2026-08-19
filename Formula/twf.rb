class Twf < Formula
  desc "Toolchain for designing and validating entire Temporal systems in .twf"
  homepage "https://github.com/jmbarzee/temporal-architect"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.11.0/twf-v0.11.0-darwin-arm64.tar.gz"
      sha256 "3a0b31de2d744cf3da2b55f348c6601c31d16b33777cf01fac5ed53dda169c0b"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.11.0/twf-v0.11.0-darwin-amd64.tar.gz"
      sha256 "4aee0993b1c718305e3e9b885edc70c124524a42d9672012be2dc68a55fe1d4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.11.0/twf-v0.11.0-linux-arm64.tar.gz"
      sha256 "8a10075a0beb0c98ef7da3c31033e0d960cfb6f892f0ef4a315d98d20482f238"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.11.0/twf-v0.11.0-linux-amd64.tar.gz"
      sha256 "1a2b9b54374f7e73ac405a73091256bc2762a2aa78e4e556e67e5a4fccd5a9ab"
    end
  end

  def install
    bin.install "twf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twf --version")
  end
end
