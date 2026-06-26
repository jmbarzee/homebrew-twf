class Twf < Formula
  desc "Toolchain for designing and validating entire Temporal systems in .twf"
  homepage "https://github.com/jmbarzee/temporal-architect"
  version "0.9.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.9.3/twf-v0.9.3-darwin-arm64.tar.gz"
      sha256 "d37a67354f3e3094c98490edd24ce1da5da41b1da62073f16e1ed26996c4a8db"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.9.3/twf-v0.9.3-darwin-amd64.tar.gz"
      sha256 "e61f972265de7a23e41c8f981e0fb27ce75ed9214f3f4d22917dced129ced326"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.9.3/twf-v0.9.3-linux-arm64.tar.gz"
      sha256 "06d86f39fc1d791dcb2fd2d90fe471490257419057d9a76c327be26748f4c9b1"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.9.3/twf-v0.9.3-linux-amd64.tar.gz"
      sha256 "6400c33e465be903118bf36bd23e46dbcc3f3bb82849ef3b4e4fe95521f086d6"
    end
  end

  def install
    bin.install "twf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twf --version")
  end
end
