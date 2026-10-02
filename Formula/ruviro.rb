class Ruviro < Formula
  desc "Native CLI for running AI coding harnesses through Ruviro"
  homepage "https://ruviro.ai/"
  version "0.13.0"

  on_macos do
    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.13.0/ruviro_0.13.0_darwin_arm64.tar.gz"
      sha256 "8b74e3791ae6cd7ce5c94f28f53efd466cd9617741f3191d1b4c59a3e72c904e"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.13.0/ruviro_0.13.0_darwin_amd64.tar.gz"
      sha256 "4c844f6b61ad27cdb89cf0c1612f9c1681d66160599d4ffa25ccfb62dc71f85e"
    end
  end

  on_linux do
    depends_on "libsecret"

    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.13.0/ruviro_0.13.0_linux_arm64.tar.gz"
      sha256 "78e87538cca3aa8310be633ea876731fec0e312f243762f688c8f2a6f377377a"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.13.0/ruviro_0.13.0_linux_amd64.tar.gz"
      sha256 "0e3b90088cbdf0887a0956280783621465fa3ab3850e509f7326f62317b9789b"
    end
  end

  def install
    bin.install "ruviro"
  end

  test do
    assert_equal "ruviro #{version}", shell_output("#{bin}/ruviro --version").strip
  end
end
