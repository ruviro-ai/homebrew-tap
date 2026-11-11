class Ruviro < Formula
  desc "Native CLI for running AI coding harnesses through Ruviro"
  homepage "https://ruviro.ai/"
  version "0.20.3"

  on_macos do
    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.20.3/ruviro_0.20.3_darwin_arm64.tar.gz"
      sha256 "ce0061e5b13594f26d2c869f88593aabdd62ad86747cac5e5cc93ce2d844190d"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.20.3/ruviro_0.20.3_darwin_amd64.tar.gz"
      sha256 "b350fdac700edcb094096dad1b748851fcc350cebe0094fdfa920b2aa693c33d"
    end
  end

  on_linux do
    depends_on "libsecret"

    on_arm do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.20.3/ruviro_0.20.3_linux_arm64.tar.gz"
      sha256 "be8ae7552bc29bd737a1bd346c38cea5d061fe2cb85013d307ff2dc2f33d72b8"
    end
    on_intel do
      url "https://github.com/ruviro-ai/ruviro-cli/releases/download/v0.20.3/ruviro_0.20.3_linux_amd64.tar.gz"
      sha256 "c78913ea8c874eaf868f89147e75b0513fe66492992dc4a57e60bd2b18febcc0"
    end
  end

  def install
    bin.install "ruviro"
  end

  test do
    assert_equal "ruviro #{version}", shell_output("#{bin}/ruviro --version").strip
  end
end
