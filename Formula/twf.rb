class Twf < Formula
  desc "Toolchain for designing and validating entire Temporal systems in .twf"
  homepage "https://github.com/jmbarzee/temporal-architect"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.9.2/twf-v0.9.2-darwin-arm64.tar.gz"
      sha256 "a6868e77183e718b4f30353a953674d669565bae610a57dfbc91bb3c1f81fbca"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.9.2/twf-v0.9.2-darwin-amd64.tar.gz"
      sha256 "ba69f10ca37ed58a7c95cc03b783163d3134b6433f438dfd48d70610211498b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.9.2/twf-v0.9.2-linux-arm64.tar.gz"
      sha256 "906466d2560c7cd99846571c8a74bcc0968fc5dcbda64458e2fce4c186e18b00"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.9.2/twf-v0.9.2-linux-amd64.tar.gz"
      sha256 "58652e66a3610f64aa20a7d98cbdb3bc5629251d90b61289fc4fd9edbbe1ada7"
    end
  end

  def install
    bin.install "twf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twf --version")
  end
end
