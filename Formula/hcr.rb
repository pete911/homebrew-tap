# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hcr < Formula
  desc "GitHub pages helm chart releaser."
  homepage "https://github.com/pete911/hcr"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pete911/hcr/releases/download/v0.0.7/hcr_0.0.7_darwin_amd64.tar.gz"
      sha256 "f3c6f3ec40589c6257616bb9ab9a12c6a2835afb32453b9d607a5dab236cabef"

      def install
        bin.install "hcr"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pete911/hcr/releases/download/v0.0.7/hcr_0.0.7_darwin_arm64.tar.gz"
      sha256 "4b5e29bd3ef713ba4262a2a49ec2a110294a39cdb84f89a93491073acb90a23d"

      def install
        bin.install "hcr"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pete911/hcr/releases/download/v0.0.7/hcr_0.0.7_linux_arm64.tar.gz"
      sha256 "a2a2069b6f2df54484d09e4d547a623aac7d0ace6870f593cb64dd42ce50f831"

      def install
        bin.install "hcr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pete911/hcr/releases/download/v0.0.7/hcr_0.0.7_linux_amd64.tar.gz"
      sha256 "ef3ad51e0c65b0f087ffb86f531bd107e532edb7e22690978ecb18417d9540b0"

      def install
        bin.install "hcr"
      end
    end
  end

  test do
    assert_match /Usage/, shell_output("#{bin}/hcr -h", 0)
  end
end
