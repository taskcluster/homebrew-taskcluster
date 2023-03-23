# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "48.1.1"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v48.1.1/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "249945fde1fccae99ae421ab97482dd96044d4a2bd93f2492b4645f547f9113c"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v48.1.1/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "af29aab7b5593ed5d0a7874d6134c9415b3433260ac5954f898dc28b89a68306"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v48.1.1/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0ee64b92613169fbaa22a622eb88eaf61694bd6a486e59e5356b7757773722e3"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v48.1.1/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "34a0f3ba022fbfe5bf12a1bda21f75976d4aef7d8a4413adb46327c5374932e2"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
