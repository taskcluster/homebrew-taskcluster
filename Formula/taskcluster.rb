# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "80.0.0"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v80.0.0/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "11d85cd50b1e1777e884fb65a2c2ee79dd030ed7efc8341791b9181603302d8f"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v80.0.0/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4d1d2762ff16bb3fa14493853141b9c685aa63293d417de20de20fdfcf60f65d"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v80.0.0/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "25edbf6c535194e4a59aee563eb77d154b943430c611fffeacc1411b9995708e"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v80.0.0/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a0c87f5b56d582d7510d8c0ca7eedba073eb1515f487ac0551a7822174d36cf5"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
