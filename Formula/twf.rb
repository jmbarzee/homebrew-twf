class Twf < Formula
  desc "Toolchain for designing and validating entire Temporal systems in .twf"
  homepage "https://github.com/jmbarzee/temporal-architect"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.10.1/twf-v0.10.1-darwin-arm64.tar.gz"
      sha256 "d622e93d478f495fc97dfc54dcf36d8e45a166a0e571238145dc7765ee02e0e6"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.10.1/twf-v0.10.1-darwin-amd64.tar.gz"
      sha256 "1b78d0884ad3c2760ec77b0f0f8bc73887041887b6ae0cc102535fd3e35ba79f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.10.1/twf-v0.10.1-linux-arm64.tar.gz"
      sha256 "1015b2b85c76f0a8b63da9852ae01a92bb0b686d8fa6febdaf02693930fbcad4"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.10.1/twf-v0.10.1-linux-amd64.tar.gz"
      sha256 "1e172e97272f33007167b8397ccf05eecf89ac94d912dafdcc1f2f535ed47bb5"
    end
  end

  def install
    bin.install "twf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twf --version")
  end
end
