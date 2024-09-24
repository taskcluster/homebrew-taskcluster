# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Taskcluster < Formula
  desc "A Taskcluster client library for the command line"
  homepage "https://github.com/taskcluster/taskcluster/tree/main/clients/client-shell"
  version "70.0.0"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/taskcluster/taskcluster/releases/download/v70.0.0/taskcluster-darwin-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "3c2f836e7416d9ac3dea24a9ca5520be2edc7e1aabc89368b8d99fa3ea95a4e5"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v70.0.0/taskcluster-darwin-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "343acbd0706d86303ac11d78d0dd5b6f819bc5b8cd6e93f296c9db91c80f0bbd"

      def install
        bin.install "taskcluster"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/taskcluster/taskcluster/releases/download/v70.0.0/taskcluster-linux-arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "af10921d11efce4edef3e0e777f7eae52f481ab7d622a10098af3146c01a9a59"

      def install
        bin.install "taskcluster"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/taskcluster/taskcluster/releases/download/v70.0.0/taskcluster-linux-amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8d6dcd359aaa7d6777efe0a60ae0078650e79bac5437c7210137e22ddbe03fa8"

      def install
        bin.install "taskcluster"
      end
    end
  end

  test do
    system "#{bin}/taskcluster version"
  end
end
