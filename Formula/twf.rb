class Twf < Formula
  desc "Toolchain for designing and validating entire Temporal systems in .twf"
  homepage "https://github.com/jmbarzee/temporal-architect"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.10.0/twf-v0.10.0-darwin-arm64.tar.gz"
      sha256 "e116ca86f9389485ab67e0671f02a4472664ccbfc30ec50b1185b5369ea4ea43"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.10.0/twf-v0.10.0-darwin-amd64.tar.gz"
      sha256 "255981f8f2a5b3396c375e61c4d1f51623fc37a6170fc30c4e14da83566c2494"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.10.0/twf-v0.10.0-linux-arm64.tar.gz"
      sha256 "4d2a707418b49a76ffdc060ba1e6ece9f0223ddbadaacd73cf239d6e0e9d9db7"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.10.0/twf-v0.10.0-linux-amd64.tar.gz"
      sha256 "5af49fdd1d2c88c1a3545d29424dc35312c8d431231bf578849a19abc5a40fcc"
    end
  end

  def install
    bin.install "twf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twf --version")
  end
end
