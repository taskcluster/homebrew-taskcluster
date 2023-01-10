# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "47.0.1"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v47.0.1/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ed19048dda5f4d60d191e5660e143a5b3600b94727c4742c01e8b1ab8487e132"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v47.0.1/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "78ccfc69976df8f8cf4ca54b300e9c7c40eda3d80ac67bc78788db55f1b692d4"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v47.0.1/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f59d3f089224a02e1479204be0f55dafe6bd1e16548e9ae26ab4d0109968e731"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v47.0.1/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4fd7a3421eecadb71b0cd2cd6cc914c9eef289937f1bf842f8f1163b933b6a4a"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
