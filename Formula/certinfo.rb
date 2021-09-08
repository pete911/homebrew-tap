# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Certinfo < Formula
  desc "Print x509 certificate info."
  homepage "https://github.com/pete911/certinfo"
  version "0.53"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pete911/certinfo/releases/download/0.53/certinfo_0.53_darwin_amd64.tar.gz"
      sha256 "09f142ae1934a13eedc4836ffabe9558d85a88409a8fe1230820953cd80f0848"
    end
    if Hardware::CPU.arm?
      url "https://github.com/pete911/certinfo/releases/download/0.53/certinfo_0.53_darwin_arm64.tar.gz"
      sha256 "6f817351815a01b5085edff9ebee09ac764e292227506e6f69b596d8b204723d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pete911/certinfo/releases/download/0.53/certinfo_0.53_linux_amd64.tar.gz"
      sha256 "05fd61bc18c394b4bcc65dbcd4ad58d10ecffa4bab62dbe22a4f63f9dad377e2"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pete911/certinfo/releases/download/0.53/certinfo_0.53_linux_arm64.tar.gz"
      sha256 "5e98e768899ab73c3fbd909fe3b925b1d837372681f26435c8bf2240d74f104d"
    end
  end

  def install
    bin.install "certinfo"
  end

  test do
    assert_match /Usage/, shell_output("#{bin}/certinfo -h", 0)
  end
end
