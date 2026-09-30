class Ruviro < Formula
  desc "Native CLI for running AI coding harnesses through Ruviro"
  homepage "https://ruviro.ai/"
  version "0.11.0"

  on_macos do
    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.11.0/ruviro_0.11.0_darwin_arm64.tar.gz"
      sha256 "8d710e0accc41bb43ea769bca7aa4bf2bbc63294b24a667beb441a86bbec5ab7"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.11.0/ruviro_0.11.0_darwin_amd64.tar.gz"
      sha256 "a119ee940e9ae3e419f90583e91b34f3660e124d88d95d9d87bf24efa1418861"
    end
  end

  on_linux do
    depends_on "libsecret"

    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.11.0/ruviro_0.11.0_linux_arm64.tar.gz"
      sha256 "b005e882024eb41cd49f4348875c62e1238e300f58db10cb96162bfa0bce283f"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.11.0/ruviro_0.11.0_linux_amd64.tar.gz"
      sha256 "61bfa8fa5695c6311050cad257165692846632f6c8f59d8d371b1109e48a6169"
    end
  end

  def install
    bin.install "ruviro"
  end

  test do
    assert_equal "ruviro #{version}", shell_output("#{bin}/ruviro --version").strip
  end
end
