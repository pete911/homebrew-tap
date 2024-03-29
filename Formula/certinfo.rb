# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Certinfo < Formula
  desc "Print x509 certificate info."
  homepage "https://github.com/pete911/certinfo"
  version "1.0.21"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pete911/certinfo/releases/download/v1.0.21/certinfo_1.0.21_darwin_amd64.tar.gz"
      sha256 "e61f2529fe163e3c02fc44adbc81119197d36cad967c2b3acbfbc8977d50de26"

      def install
        bin.install "certinfo"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pete911/certinfo/releases/download/v1.0.21/certinfo_1.0.21_darwin_arm64.tar.gz"
      sha256 "57509d51dbfc520c1c60437bb6529a62fd3e1128bcf27a470bbbe5e0b6fe3d2f"

      def install
        bin.install "certinfo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pete911/certinfo/releases/download/v1.0.21/certinfo_1.0.21_linux_arm64.tar.gz"
      sha256 "bedaa48137a8c4ccf45e9b88adb29ad4c74d0f5d0fe1a9b930a71b99db7e1988"

      def install
        bin.install "certinfo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pete911/certinfo/releases/download/v1.0.21/certinfo_1.0.21_linux_amd64.tar.gz"
      sha256 "56d12d859ff6bb22e03e0b5cc9af79494974a8f48d830d3d20548985f10a187c"

      def install
        bin.install "certinfo"
      end
    end
  end

  test do
    assert_match /Usage/, shell_output("#{bin}/certinfo -h", 0)
  end
end
