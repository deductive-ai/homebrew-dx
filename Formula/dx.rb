class Dx < Formula
  desc "CLI for Deductive AI — ask questions about your infrastructure"
  homepage "https://github.com/deductive-ai/dx"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/deductive-ai/dx/releases/download/v0.3.0/dx_0.3.0_darwin_amd64.tar.gz"
      sha256 "dc077c4653469570ef52205c63a6a1620b2a344a75eb4a125384fa0546ed76e4"
    end

    on_arm do
      url "https://github.com/deductive-ai/dx/releases/download/v0.3.0/dx_0.3.0_darwin_arm64.tar.gz"
      sha256 "b520e48518ccfda602489b5ce97d583eae568d78740e4f0945a591d6d7e0d514"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/deductive-ai/dx/releases/download/v0.3.0/dx_0.3.0_linux_amd64.tar.gz"
      sha256 "213dc3cbd1ff99460f4c43070309b18b6af271c4379bf74a299b8cc78fbd8ea3"
    end

    on_arm do
      url "https://github.com/deductive-ai/dx/releases/download/v0.3.0/dx_0.3.0_linux_arm64.tar.gz"
      sha256 "e20f659d59f76f7ff25a6fb19493798e6ff5b6124a7470277838a1ce54ab2ab7"
    end
  end

  def install
    bin.install "dx"
  end

  test do
    system "#{bin}/dx", "version"
  end
end
