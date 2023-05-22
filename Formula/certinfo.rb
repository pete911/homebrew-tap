# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Certinfo < Formula
  desc "Print x509 certificate info."
  homepage "https://github.com/pete911/certinfo"
  version "1.0.17"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pete911/certinfo/releases/download/v1.0.17/certinfo_1.0.17_darwin_amd64.tar.gz"
      sha256 "837f696ae9aba455e200e70ea06595bd0f4312f063a801d1c743676961b4fe94"

      def install
        bin.install "certinfo"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pete911/certinfo/releases/download/v1.0.17/certinfo_1.0.17_darwin_arm64.tar.gz"
      sha256 "aeed377445764d9fc8a899397de7a716230b958dc03773759c5d08fa77f4c190"

      def install
        bin.install "certinfo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pete911/certinfo/releases/download/v1.0.17/certinfo_1.0.17_linux_arm64.tar.gz"
      sha256 "cf8696d43c1f9697cb4e66eae76e68d5947592c4bea3d2aaf0bceb7035aebd49"

      def install
        bin.install "certinfo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pete911/certinfo/releases/download/v1.0.17/certinfo_1.0.17_linux_amd64.tar.gz"
      sha256 "b75ef89421b3b1f81a7aa14124e4cf44227be3ae6426d5c62ca92e598c246ec9"

      def install
        bin.install "certinfo"
      end
    end
  end

  test do
    assert_match /Usage/, shell_output("#{bin}/certinfo -h", 0)
  end
end
