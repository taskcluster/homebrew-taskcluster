# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "54.1.1"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v54.1.1/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "350e8ccdc474dd777c9cb04b2f28c85e108ca803070ee61829c0a07f36dbf0c4"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v54.1.1/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "95704ae799e5baa8ba00c8d53cb6ab19cd6ae88249f16c66201ee00a093ccea4"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v54.1.1/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "732a0fb85ef898e9b735cac79f333741b2e9e13bf1bf95670df383c0a55b8b48"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v54.1.1/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "70e8e0f89ca33bdf16d1e3ac8a54b52c53d0f3cfaf44694006a717eec6364a84"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
