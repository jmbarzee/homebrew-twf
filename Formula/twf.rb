class Twf < Formula
  desc "Toolchain for designing and validating entire Temporal systems in .twf"
  homepage "https://github.com/jmbarzee/temporal-architect"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.15.0/twf-v0.15.0-darwin-arm64.tar.gz"
      sha256 "2b2983770506d00fd26f761f0f95559043bfb7599ce6552d75cfff833d8c6e66"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.15.0/twf-v0.15.0-darwin-amd64.tar.gz"
      sha256 "f29e62740dbac83ab7a83d97ef05751428d96d225ea348b01422ac710d891b7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.15.0/twf-v0.15.0-linux-arm64.tar.gz"
      sha256 "125d470d92e938d5d6718f8bd96acef3b937b0e7eb137c295081d3ba5f27cf33"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.15.0/twf-v0.15.0-linux-amd64.tar.gz"
      sha256 "6343559aa81cf868654f318cb5f67e90193c41c232ca15c135d9cd2cb8ae629d"
    end
  end

  def install
    bin.install "twf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twf --version")
  end
end
