class Twf < Formula
  desc "Design and validate entire Temporal systems in every Temporal SDK"
  homepage "https://github.com/jmbarzee/temporal-architect"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.17.0/twf-v0.17.0-darwin-arm64.tar.gz"
      sha256 "a61eb566edfa4eb0bd87a981c62a743bd4f8e9ea467dcb150281b2600479ac21"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.17.0/twf-v0.17.0-darwin-amd64.tar.gz"
      sha256 "2d74514cc449a272ab96a15111fbcbadc7d4d2b197d025fb3cc20e30338a5271"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.17.0/twf-v0.17.0-linux-arm64.tar.gz"
      sha256 "8ecf3d45ca54688523972ebbb624dfc062661aca85decfd7f8494796c3ac5ba4"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.17.0/twf-v0.17.0-linux-amd64.tar.gz"
      sha256 "fca26dad60cf3c8214572925ec7f61396e7eea8be0e414d4d9588807342bcb38"
    end
  end

  def install
    bin.install "twf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twf --version")
  end
end
