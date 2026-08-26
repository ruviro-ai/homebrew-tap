class Ruviro < Formula
  desc "Native CLI for running AI coding harnesses through Ruviro"
  homepage "https://ruviro.ai/"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.2.0/ruviro_0.2.0_darwin_arm64.tar.gz"
      sha256 "3a6463829aafb267d851a740a5523eb73dad3f6bac9d1f4ee7497b084cc487f7"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.2.0/ruviro_0.2.0_darwin_amd64.tar.gz"
      sha256 "5a7396fd99fe877625fec532ffcd75a4dd0e6f8776cb4b5cb271108f3297caa1"
    end
  end

  on_linux do
    depends_on "libsecret"

    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.2.0/ruviro_0.2.0_linux_arm64.tar.gz"
      sha256 "a9a34b90a5123b72d9312ab93754f24d02743ac0a43fa81b488079a7afbfc3a2"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.2.0/ruviro_0.2.0_linux_amd64.tar.gz"
      sha256 "97a7e0a7898975caa252402eb44493706dea9cb4ef3688b7e1306985152cc968"
    end
  end

  def install
    bin.install "ruviro"
  end

  test do
    assert_equal "ruviro #{version}", shell_output("#{bin}/ruviro --version").strip
  end
end
