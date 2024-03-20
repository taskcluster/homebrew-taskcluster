# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "63.0.0"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v63.0.0/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "cd648d217de4598ee02f9a99590547abc3983e48366164d3b676ec7c4614a0dd"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v63.0.0/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "13c07c1ae1f5dcf3e119375e3d01d1d8bbb73d066cf0c63900b524d07250d650"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v63.0.0/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ce16adfcb60493b1aeddd1e33777bcbc695751d7cb37c9cc9959cd8dd9b3cb71"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v63.0.0/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2c208a313d5405aa7b52abcbeb5b4f219371614f964a2059cc119c4c24895f46"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
