# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Certinfo < Formula
  desc "Print x509 certificate info."
  homepage "https://github.com/pete911/certinfo"
  version "1.0.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pete911/certinfo/releases/download/v1.0.0/certinfo_1.0.0_darwin_amd64.tar.gz"
      sha256 "f4432fec51de77a4c5465451acf26055a2d1ec9572696fd636f9c76331359428"
    end
    if Hardware::CPU.arm?
      url "https://github.com/pete911/certinfo/releases/download/v1.0.0/certinfo_1.0.0_darwin_arm64.tar.gz"
      sha256 "869c898c408184a97843c6a0e51a6ef1ed4e0001c06d75f79f2b7d0e1fe37337"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pete911/certinfo/releases/download/v1.0.0/certinfo_1.0.0_linux_amd64.tar.gz"
      sha256 "42516aba2e3fb7b5c4b3e85f77189d9e3e928ac182c3fb2b56d4f1632b4ad5b4"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pete911/certinfo/releases/download/v1.0.0/certinfo_1.0.0_linux_arm64.tar.gz"
      sha256 "71f174bfc766f5b731b859c411f1ce77fce3fc6fe524230089c7d83ff4762c2e"
    end
  end

  def install
    bin.install "certinfo"
  end

  test do
    assert_match /Usage/, shell_output("#{bin}/certinfo -h", 0)
  end
end
