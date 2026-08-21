class Twf < Formula
  desc "Toolchain for designing and validating entire Temporal systems in .twf"
  homepage "https://github.com/jmbarzee/temporal-architect"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.14.0/twf-v0.14.0-darwin-arm64.tar.gz"
      sha256 "03b9b5dea0ac073ffdff432382730f61d8925f705804ab39b9ad4483a7de6cc1"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.14.0/twf-v0.14.0-darwin-amd64.tar.gz"
      sha256 "79bad69144aa70b1bcfa364f23155b8124f3e9ffcc07f3440245d3d121c8cd82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.14.0/twf-v0.14.0-linux-arm64.tar.gz"
      sha256 "22e3d84ebf755d3654ad17ec962e429549b3eaee555b91e8f11abd4eed7d31e7"
    end
    on_intel do
      url "https://github.com/jmbarzee/temporal-architect/releases/download/v0.14.0/twf-v0.14.0-linux-amd64.tar.gz"
      sha256 "1c61561d735867fcc472b4fec171302495664d150e83efdb9892ddb3c058d186"
    end
  end

  def install
    bin.install "twf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twf --version")
  end
end
