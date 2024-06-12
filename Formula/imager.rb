# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "lib/private"
class Imager < Formula
  desc "Automated image updates"
  homepage "https://github.com/jamf/imager"
  version "0.1.0"

  on_macos do
    on_intel do
      url "https://github.com/jamf/imager/releases/download/v0.1.0/imager-darwin-amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a4d773b1b243fbcab3ef3f81562e8d57e0bb0dbace80e048cb196aab7c9a8bff"

      def install
        bin.install "imager"
      end
    end
    on_arm do
      url "https://github.com/jamf/imager/releases/download/v0.1.0/imager-darwin-arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "ba1063b8795a00cf0b9b497fbf275084dd00aa70cecc77c437c66b83381f5dba"

      def install
        bin.install "imager"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jamf/imager/releases/download/v0.1.0/imager-linux-amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "39e596bc62c17497abdc92ac7393e39b489de9f8a39b5bd097cba08a2954a410"

        def install
          bin.install "imager"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jamf/imager/releases/download/v0.1.0/imager-linux-arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "53405c43441c9666dd67c9a4799dd552ff9a52a32e36da42c688989701d13173"

        def install
          bin.install "imager"
        end
      end
    end
  end
end