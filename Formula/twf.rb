class Twf < Formula
  desc "Toolchain for designing and validating entire Temporal systems in .twf"
  homepage "https://github.com/jmbarzee/temporal-architect"
  version "0.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.10.2/twf-v0.10.2-darwin-arm64.tar.gz"
      sha256 "32f259501134e7868b8a7fb8107a76e22642b02d0e90c5a095f47667fb9b2ede"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.10.2/twf-v0.10.2-darwin-amd64.tar.gz"
      sha256 "82b2e62d2dd29f2e82fd9a182f68130c31eec8fd012d78323147532b0b33117b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.10.2/twf-v0.10.2-linux-arm64.tar.gz"
      sha256 "2a2b36589e3c8ac685ac85ca8d82482c37f5cf9a99c6216d945bd6108b7cc0d4"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.10.2/twf-v0.10.2-linux-amd64.tar.gz"
      sha256 "1f59f611a5c0a5362b18d3ef1f8850b8f59ee9318ec5712dc9fdabf1e3a62778"
    end
  end

  def install
    bin.install "twf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twf --version")
  end
end
