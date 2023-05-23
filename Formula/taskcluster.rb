# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "51.0.0"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v51.0.0/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3f9a8e94851a19b3dd833d4a8c683bdffade6cb1a63cfe845822ab0cb1163f5a"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v51.0.0/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8b137a68d659cf4031406f329313777ee3e9a43961f028f209c2c6fe17d07bca"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v51.0.0/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "024bf8235fe185615d2f310a380484c101919d095a917c836c9ab1bad9c95bde"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v51.0.0/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9fc035023e961b23c08f535b800a3e969246905be43269e1f217ecd0aede0195"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
