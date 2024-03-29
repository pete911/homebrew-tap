# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jwt < Formula
  desc "jwt cli"
  homepage "https://github.com/pete911/jwt"
  version "1.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pete911/jwt/releases/download/v1.0.5/jwt_1.0.5_darwin_amd64.tar.gz"
      sha256 "fb4f71cf48e9de5545613e4b70a20922900364934c015d48ece436f55e3440ee"

      def install
        bin.install "jwt"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pete911/jwt/releases/download/v1.0.5/jwt_1.0.5_darwin_arm64.tar.gz"
      sha256 "de7091566b72b4172b31da930f09dfa6327eca8bd777dc1c2afa2d8527429bf0"

      def install
        bin.install "jwt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pete911/jwt/releases/download/v1.0.5/jwt_1.0.5_linux_arm64.tar.gz"
      sha256 "f2d772a964c6b1b80b1a23804eda688aecdd43270cb5d5e82f82886108508936"

      def install
        bin.install "jwt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pete911/jwt/releases/download/v1.0.5/jwt_1.0.5_linux_amd64.tar.gz"
      sha256 "304461b843d814e024d956ac593ff844d20bbf0ed179ded341bc0d41c29d3797"

      def install
        bin.install "jwt"
      end
    end
  end

  test do
    assert_match /jwt/, shell_output("#{bin}/jwt -h", 0)
  end
end
