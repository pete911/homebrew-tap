# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hcr < Formula
  desc "GitHub pages helm chart releaser."
  homepage "https://github.com/pete911/hcr"
  version "0.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pete911/hcr/releases/download/v0.0.5/hcr_0.0.5_darwin_amd64.tar.gz"
      sha256 "33a4db70f1f2068d2085ee7fee3dcb697c9405c20075b660edefcec587a87b46"

      def install
        bin.install "hcr"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pete911/hcr/releases/download/v0.0.5/hcr_0.0.5_darwin_arm64.tar.gz"
      sha256 "d1ed03e40f3a4bb8ef7d68f149eed3103b854107bc860d9264e4f3050f909973"

      def install
        bin.install "hcr"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pete911/hcr/releases/download/v0.0.5/hcr_0.0.5_linux_amd64.tar.gz"
      sha256 "c5b5363dd1a35e5533bf17d421a83a2cc0ed774534929f9c23e7d00bdf39ca74"

      def install
        bin.install "hcr"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pete911/hcr/releases/download/v0.0.5/hcr_0.0.5_linux_arm64.tar.gz"
      sha256 "e44dad81ff4d13ff3ac132d4cc94737a21adf916243dd75aac7a218944327c3b"

      def install
        bin.install "hcr"
      end
    end
  end

  test do
    assert_match /Usage/, shell_output("#{bin}/hcr -h", 0)
  end
end
