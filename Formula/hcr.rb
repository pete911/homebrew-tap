# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hcr < Formula
  desc "GitHub pages helm chart releaser."
  homepage "https://github.com/pete911/hcr"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pete911/hcr/releases/download/v0.0.2/hcr_0.0.2_darwin_amd64.tar.gz"
      sha256 "56c2e85113fd9a920cdfa47e90cafc7deec92ef1a3395f85363737692500a92e"

      def install
        bin.install "hcr"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pete911/hcr/releases/download/v0.0.2/hcr_0.0.2_darwin_arm64.tar.gz"
      sha256 "682d07a1a7e9112d7965402b9fae0fe298178012b0fee7cff24dfca302a04e49"

      def install
        bin.install "hcr"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pete911/hcr/releases/download/v0.0.2/hcr_0.0.2_linux_arm64.tar.gz"
      sha256 "2075ca4e7bda77a821d585aaf237aef3ccccd8811dbe0850d8945e8e14cc4d7c"

      def install
        bin.install "hcr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pete911/hcr/releases/download/v0.0.2/hcr_0.0.2_linux_amd64.tar.gz"
      sha256 "6341cd8573a412d19b27a1d3de0b7018cbb5fdd7c5bdd97e5fae7aef13ffdf00"

      def install
        bin.install "hcr"
      end
    end
  end

  test do
    assert_match /Usage/, shell_output("#{bin}/hcr -h", 0)
  end
end