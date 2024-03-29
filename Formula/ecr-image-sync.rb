# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class EcrImageSync < Formula
  desc "ECR image sync"
  homepage "https://github.com/pete911/ecr-image-sync"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pete911/ecr-image-sync/releases/download/v0.1.1/ecr-image-sync_0.1.1_darwin_amd64.tar.gz"
      sha256 "398289534cdf021e34abf5da42592f009c4e5f0971799380acdd4d1feff80954"

      def install
        bin.install "ecr-image-sync"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pete911/ecr-image-sync/releases/download/v0.1.1/ecr-image-sync_0.1.1_darwin_arm64.tar.gz"
      sha256 "bad2f8046db715dd381fd18fb95eb79eacfc5d3fa39bbd7d376e94bdefb63b2c"

      def install
        bin.install "ecr-image-sync"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pete911/ecr-image-sync/releases/download/v0.1.1/ecr-image-sync_0.1.1_linux_amd64.tar.gz"
      sha256 "e658708a397f525279401e8e0244743aeb7c8c87905c292a73840fb25a7d3922"

      def install
        bin.install "ecr-image-sync"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pete911/ecr-image-sync/releases/download/v0.1.1/ecr-image-sync_0.1.1_linux_arm64.tar.gz"
      sha256 "63ee0cfa7a60f3223bdef83e478d562933354bd87332a38ac259c1d550ac1a7b"

      def install
        bin.install "ecr-image-sync"
      end
    end
  end
end
