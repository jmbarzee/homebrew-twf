class Twf < Formula
  desc "Toolchain for designing and validating entire Temporal systems in .twf"
  homepage "https://github.com/jmbarzee/temporal-architect"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.16.0/twf-v0.16.0-darwin-arm64.tar.gz"
      sha256 "ec48b51c8f4dfbd5f59a7047342f744fe9ecb69fadd836e1d9a7f71e11288c66"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.16.0/twf-v0.16.0-darwin-amd64.tar.gz"
      sha256 "019ea1a60c9a5e021f9ef050cd21de8285ec62ea7ddbc426b81b08f02ab0bf9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.16.0/twf-v0.16.0-linux-arm64.tar.gz"
      sha256 "f6a16b64fe0c55be9bf6c79d674217d36fa39ffe8944b47e34fc1f8048e93faa"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.16.0/twf-v0.16.0-linux-amd64.tar.gz"
      sha256 "5f220064522356ca8891b36d67fad0c9f90cb3994314dcc522315dc5db38530a"
    end
  end

  def install
    bin.install "twf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twf --version")
  end
end
