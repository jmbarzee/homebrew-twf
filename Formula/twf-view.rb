class TwfView < Formula
  desc "Live local visualizer for .twf Temporal system designs"
  homepage "https://github.com/jmbarzee/temporal-architect-dist"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect-dist/releases/download/v0.17.0/twf-view-v0.17.0-darwin-arm64.tar.gz"
      sha256 "8630e91e0255b5aebba78e718f0ec911e86ef5b94ffdfb90167622d3470c149d"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect-dist/releases/download/v0.17.0/twf-view-v0.17.0-darwin-amd64.tar.gz"
      sha256 "73c1250bb805b4419678490811ade321354175b3b864246fb002ba3ec9ba586a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect-dist/releases/download/v0.17.0/twf-view-v0.17.0-linux-arm64.tar.gz"
      sha256 "23f4f3680962280082b420d63e82b59d770aef98560e30018cfac31ddb7e832a"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect-dist/releases/download/v0.17.0/twf-view-v0.17.0-linux-amd64.tar.gz"
      sha256 "e8eef6be5927cf0197ac5cd772e8bd4e11fbd1388f0ffdd45de19347e5e429b1"
    end
  end

  def install
    bin.install "twf-view"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twf-view --version")
  end
end
