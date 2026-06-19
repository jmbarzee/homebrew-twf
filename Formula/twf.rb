class Twf < Formula
  desc "Toolchain for designing and validating entire Temporal systems in .twf"
  homepage "https://github.com/jmbarzee/temporal-architect"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.9.1/twf-v0.9.1-darwin-arm64.tar.gz"
      sha256 "f6eb40500d3206eff1ad01ffe17288feece0e087486bc65c045aa86929601519"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.9.1/twf-v0.9.1-darwin-amd64.tar.gz"
      sha256 "253cf09cf57bcaa5216cefc0d88ac8ef891c6a7848a5933aad2d1b029ec72d1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.9.1/twf-v0.9.1-linux-arm64.tar.gz"
      sha256 "8f5f462c1766052441f7d05937d2bf365fa55d54e69b2b2504de948259f2c09b"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.9.1/twf-v0.9.1-linux-amd64.tar.gz"
      sha256 "c83ae9f78203609812d99d93956850cd39eb8b0354eae31243db5d114e677fa7"
    end
  end

  def install
    bin.install "twf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twf --version")
  end
end
