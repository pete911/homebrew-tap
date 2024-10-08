# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Certinfo < Formula
  desc "Print x509 certificate info."
  homepage "https://github.com/pete911/certinfo"
  version "1.0.24"

  on_macos do
    on_intel do
      url "https://github.com/pete911/certinfo/releases/download/v1.0.24/certinfo_1.0.24_darwin_amd64.tar.gz"
      sha256 "0f130a1800bc5664d086884cf9150e2c0e3b37e093c7e0e1190e341ea47eb053"

      def install
        bin.install "certinfo"
      end
    end
    on_arm do
      url "https://github.com/pete911/certinfo/releases/download/v1.0.24/certinfo_1.0.24_darwin_arm64.tar.gz"
      sha256 "4f358aa4fdde097b201191c11b3f15963044b4dcc7a4f77815ca86261f24faf3"

      def install
        bin.install "certinfo"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pete911/certinfo/releases/download/v1.0.24/certinfo_1.0.24_linux_amd64.tar.gz"
        sha256 "3414d7ed3549cf234324a987c419f3bb22adeebd82fa1d34e9238054774816f9"

        def install
          bin.install "certinfo"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pete911/certinfo/releases/download/v1.0.24/certinfo_1.0.24_linux_arm64.tar.gz"
        sha256 "5a1d8f6086f28f0f985f6ed8f50d1c67e994d5d3b7963bdcaee79372f9c11839"

        def install
          bin.install "certinfo"
        end
      end
    end
  end

  test do
    assert_match /Usage/, shell_output("#{bin}/certinfo -h", 0)
  end
end
