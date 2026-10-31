class TwfView < Formula
  desc "Live temporal-architect visualizer over local HTTP — hosts the .twf design graph and live-reloads on change"
  homepage "https://github.com/jmbarzee/temporal-architect-dist"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect-dist/releases/download/v0.15.0/twf-view-v0.15.0-darwin-arm64.tar.gz"
      sha256 "aba742e36db5b67515b746562119a0e0e0354b67ac67b3e4c25669eaa1cb2d17"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect-dist/releases/download/v0.15.0/twf-view-v0.15.0-darwin-amd64.tar.gz"
      sha256 "f7464074f5ec6d93f03ba1931c7b90adc72d65dd81786728adfee7beceb7e80f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect-dist/releases/download/v0.15.0/twf-view-v0.15.0-linux-arm64.tar.gz"
      sha256 "ec2bb5a9742cfbd2da1d66fbf4064546cd01a0b36d56237058e4add5def0703c"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect-dist/releases/download/v0.15.0/twf-view-v0.15.0-linux-amd64.tar.gz"
      sha256 "a8ceb2d9d498b7212fea11efb4881edcf6ddb4f03f4f247be1ae5833aae24379"
    end
  end

  def install
    bin.install "twf-view"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twf-view --version")
  end
end
