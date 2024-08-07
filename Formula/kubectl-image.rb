# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KubectlImage < Formula
  desc "List images in kubernetes cluster."
  homepage "https://github.com/pete911/kubectl-image"
  version "1.0.10"

  on_macos do
    on_intel do
      url "https://github.com/pete911/kubectl-image/releases/download/v1.0.10/kubectl-image_1.0.10_darwin_amd64.tar.gz"
      sha256 "3fc45027070ae0a5f60a60a57bcb2d45e96a65a197fad5c119e2841ce50d5e20"

      def install
        bin.install "kubectl-image"
      end
    end
    on_arm do
      url "https://github.com/pete911/kubectl-image/releases/download/v1.0.10/kubectl-image_1.0.10_darwin_arm64.tar.gz"
      sha256 "afbbb90c5b98233912eb18baa282b4bca8b7c19f72adb0667db5256d95e2fba4"

      def install
        bin.install "kubectl-image"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pete911/kubectl-image/releases/download/v1.0.10/kubectl-image_1.0.10_linux_amd64.tar.gz"
        sha256 "13f24ec268f4249b29ce4fc5ce74b4c7d73e6607480467f74c2ed89962930c91"

        def install
          bin.install "kubectl-image"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pete911/kubectl-image/releases/download/v1.0.10/kubectl-image_1.0.10_linux_arm64.tar.gz"
        sha256 "ee3fe615c78de5394983f68f2fbb58ac1f707e8c173002a798ef32a8b9dbd372"

        def install
          bin.install "kubectl-image"
        end
      end
    end
  end

  test do
    assert_match /Usage/, shell_output("#{bin}/kubectl-image -h", 0)
  end
end
