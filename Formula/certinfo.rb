# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Certinfo < Formula
  desc "Print x509 certificate info."
  homepage "https://github.com/pete911/certinfo"
  version "1.0.18"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pete911/certinfo/releases/download/v1.0.18/certinfo_1.0.18_darwin_amd64.tar.gz"
      sha256 "f0bf0629cb63dff439cdd3bc617262e04e8a205b864d53b4d5e43abbf3967edc"

      def install
        bin.install "certinfo"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pete911/certinfo/releases/download/v1.0.18/certinfo_1.0.18_darwin_arm64.tar.gz"
      sha256 "b945a9ba534f9a5eb32d885b37e4aab05e89702a56f5c3086a4fd18bea472b51"

      def install
        bin.install "certinfo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pete911/certinfo/releases/download/v1.0.18/certinfo_1.0.18_linux_arm64.tar.gz"
      sha256 "d92f467809917b1c5848213fb7f134712567e324ce18943f7d519ed2d88f9bab"

      def install
        bin.install "certinfo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pete911/certinfo/releases/download/v1.0.18/certinfo_1.0.18_linux_amd64.tar.gz"
      sha256 "56321696999b26d4be4c2ae7fbbc47db952192315f07130f0098109bd89fb7f7"

      def install
        bin.install "certinfo"
      end
    end
  end

  test do
    assert_match /Usage/, shell_output("#{bin}/certinfo -h", 0)
  end
end
