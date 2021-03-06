# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Certinfo < Formula
  desc "Print x509 certificate info."
  homepage "https://github.com/pete911/certinfo"
  version "1.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pete911/certinfo/releases/download/v1.0.7/certinfo_1.0.7_darwin_amd64.tar.gz"
      sha256 "e0b28fae9060b8d43aae9dcaaeae782931b8f9c620a129c16ac196524cb3af74"

      def install
        bin.install "certinfo"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pete911/certinfo/releases/download/v1.0.7/certinfo_1.0.7_darwin_arm64.tar.gz"
      sha256 "d81c6dbe47ecd5a7e2fcd1f28d93b79ff04c5f8bee8cf675dfb47c6b3047887f"

      def install
        bin.install "certinfo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pete911/certinfo/releases/download/v1.0.7/certinfo_1.0.7_linux_arm64.tar.gz"
      sha256 "68ec1e22281158b932aa9e28ba141de7cb81f7e2e52c72bafdca805960193a41"

      def install
        bin.install "certinfo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pete911/certinfo/releases/download/v1.0.7/certinfo_1.0.7_linux_amd64.tar.gz"
      sha256 "45e7db88074c4ffc18a1e434f762121ba4e3de78893d276eb306a46f143b7ef3"

      def install
        bin.install "certinfo"
      end
    end
  end

  test do
    assert_match /Usage/, shell_output("#{bin}/certinfo -h", 0)
  end
end
