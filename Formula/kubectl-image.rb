# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KubectlImage < Formula
  desc "List images in kubernetes cluster."
  homepage "https://github.com/pete911/kubectl-image"
  version "1.0.11"

  on_macos do
    on_intel do
      url "https://github.com/pete911/kubectl-image/releases/download/v1.0.11/kubectl-image_1.0.11_darwin_amd64.tar.gz"
      sha256 "252cdc390b983b624f6a03364549478f3402861679111596e8e414db28339c64"

      def install
        bin.install "kubectl-image"
      end
    end
    on_arm do
      url "https://github.com/pete911/kubectl-image/releases/download/v1.0.11/kubectl-image_1.0.11_darwin_arm64.tar.gz"
      sha256 "8c3d2c2ce33e0e2160e84afc79643e472bd6e0474240396e7aad94b36a8b1885"

      def install
        bin.install "kubectl-image"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pete911/kubectl-image/releases/download/v1.0.11/kubectl-image_1.0.11_linux_amd64.tar.gz"
        sha256 "a2fc1eba775cf45bf0508c22e4b05fdd19043ce529ddc35c9d73984e2fa76ac3"

        def install
          bin.install "kubectl-image"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/pete911/kubectl-image/releases/download/v1.0.11/kubectl-image_1.0.11_linux_arm64.tar.gz"
        sha256 "5a672d44b71ff1f03848b16a20393a82900ec986f470a2ca8110fc4795e351d1"

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
