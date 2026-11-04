class TwfView < Formula
  desc "Live temporal-architect visualizer over local HTTP — hosts the .twf design graph and live-reloads on change"
  homepage "https://github.com/jmbarzee/temporal-architect-dist"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect-dist/releases/download/v0.16.0/twf-view-v0.16.0-darwin-arm64.tar.gz"
      sha256 "823abf30e30a2cdca23ecdda727042c4fe4970df442617e40622238f063293d8"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect-dist/releases/download/v0.16.0/twf-view-v0.16.0-darwin-amd64.tar.gz"
      sha256 "17a50394ac31dc02714479aad23962f6beaa4a87aedc712fdb2cb6547dfdd297"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect-dist/releases/download/v0.16.0/twf-view-v0.16.0-linux-arm64.tar.gz"
      sha256 "ecf0b1d5cf0106a771c7b106d0c770e5d805753448d2d43309ff64774c09a746"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect-dist/releases/download/v0.16.0/twf-view-v0.16.0-linux-amd64.tar.gz"
      sha256 "82790a4f423555b4df3808bbd7186e15ddf5beec1f427b4b2ea576b271cbcbb3"
    end
  end

  def install
    bin.install "twf-view"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twf-view --version")
  end
end
