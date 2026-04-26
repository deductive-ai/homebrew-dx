class Dx < Formula
  desc "CLI for Deductive AI — ask questions about your infrastructure"
  homepage "https://github.com/deductive-ai/dx"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/deductive-ai/dx/releases/download/v0.2.0/dx_0.2.0_darwin_amd64.tar.gz"
      sha256 "6f8f8c4f3a0a18d2cb5e02a2febf2b562c9f623fce7a17845f0993015d4b1fbf"
    end

    on_arm do
      url "https://github.com/deductive-ai/dx/releases/download/v0.2.0/dx_0.2.0_darwin_arm64.tar.gz"
      sha256 "a2a6b78e2741b46fdf8a1aa34fae10d523a26d11effab83141f1c334a03bde7d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/deductive-ai/dx/releases/download/v0.2.0/dx_0.2.0_linux_amd64.tar.gz"
      sha256 "5c6acbb07b26cc2dfff984e2a3839caedfbeeca7c619ca4eea6bc4286bfd7937"
    end

    on_arm do
      url "https://github.com/deductive-ai/dx/releases/download/v0.2.0/dx_0.2.0_linux_arm64.tar.gz"
      sha256 "36bb2a21f0f4ffcc40441e3f9bfe575068ddf3adef48ac4528aa4423f90067ce"
    end
  end

  def install
    bin.install "dx"
  end

  test do
    system "#{bin}/dx", "version"
  end
end
