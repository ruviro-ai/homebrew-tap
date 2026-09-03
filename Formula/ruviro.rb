class Ruviro < Formula
  desc "Native CLI for running AI coding harnesses through Ruviro"
  homepage "https://ruviro.ai/"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.6.0/ruviro_0.6.0_darwin_arm64.tar.gz"
      sha256 "d8de7daf3e04310b1f658610ad2c51bb17c8a68d5619186f5c856041e1c08293"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.6.0/ruviro_0.6.0_darwin_amd64.tar.gz"
      sha256 "4bb4d78d56364c50be5723c4e4220326b5080775dca087001a0573b87d29a011"
    end
  end

  on_linux do
    depends_on "libsecret"

    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.6.0/ruviro_0.6.0_linux_arm64.tar.gz"
      sha256 "4381561485bfc7d5f1077dd499f33ac4c727bbffeab508a6a3968ba0c7684305"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.6.0/ruviro_0.6.0_linux_amd64.tar.gz"
      sha256 "41aed3ae0dd1d1e184b6e269dfb4b56ff2c4168578c777f830313c5d900f2764"
    end
  end

  def install
    bin.install "ruviro"
  end

  test do
    assert_equal "ruviro #{version}", shell_output("#{bin}/ruviro --version").strip
  end
end
