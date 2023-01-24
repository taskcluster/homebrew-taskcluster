# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "47.0.3"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v47.0.3/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f7ba4476439cb38e7a7f95c4597c3e96fd1b5b1cbaa3bcbf765766690386ecf2"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v47.0.3/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5b06f8c92270155d104ac0d7ca6ad84b053ccb18ebfe5cc3d660467c785d45d7"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v47.0.3/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8a5bb8e056948a948f0aa0a128f9d3674531db2e03e5358f0788d9a21b6e1244"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v47.0.3/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "e4f956342d7947d2eaf753cf17f3addfeadea5e103b9a2ec6271445f528d0e7d"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
