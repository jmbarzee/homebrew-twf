class Twf < Formula
  desc "Toolchain for designing and validating entire Temporal systems in .twf"
  homepage "https://github.com/jmbarzee/temporal-architect"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.12.0/twf-v0.12.0-darwin-arm64.tar.gz"
      sha256 "febf92b79900f387ae3389283c3fd7e033aed7ffff9f8b7ef4687e481af8f246"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.12.0/twf-v0.12.0-darwin-amd64.tar.gz"
      sha256 "458987c03bc1b05dc832715537dd175824a71128d1d51ac213c4e838edb6e8ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.12.0/twf-v0.12.0-linux-arm64.tar.gz"
      sha256 "05cb91d8f33827331b855e4241d6ea4c1298c240ac65c2902b669fb1f8cd53c3"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.12.0/twf-v0.12.0-linux-amd64.tar.gz"
      sha256 "04de0dd9d59677978033efd0cf03734b861def9b14373f3fe16bf9c33662b9d2"
    end
  end

  def install
    bin.install "twf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twf --version")
  end
end
