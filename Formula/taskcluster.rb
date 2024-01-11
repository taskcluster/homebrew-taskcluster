# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "60.0.1"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v60.0.1/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "1e2a68cc0a564e49b639f328bbbe67af2e04f1604031e85b69809621a8018bab"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v60.0.1/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "5015fc6184e7e6e43cd070de55e2f4facc16dc5e14dc4eef3098712363ad23f9"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v60.0.1/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9e3b6214121c3e1dece5dcf162acd06444bada40ed6056a833a51c04446aa45f"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v60.0.1/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "2e056ee1a9ca79a30b42d817a1fbeeef27e822f4f50ec8db07f1d6859b97a903"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
