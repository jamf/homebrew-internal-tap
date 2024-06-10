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
      sha256 "5638445103b100c44af0643f6e70004173d8e72502ff2504a2971eda6fa87743"

      def install
        bin.install "imager"
      end
    end
    on_arm do
      url "https://github.com/jamf/imager/releases/download/v0.1.0/imager-darwin-arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "5e757ff73f6ce42dd639f711974fc16da37ae68d789ae258eb19de36efac87bc"

      def install
        bin.install "imager"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jamf/imager/releases/download/v0.1.0/imager-linux-amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "8b64ab00660eb448e81c18425d7daa42452d59e4cd9514454d6218e76ce6d2ef"

        def install
          bin.install "imager"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jamf/imager/releases/download/v0.1.0/imager-linux-arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "71c739bee0bd3b11bdbc8ebab91778f4f0df0c0f6541f877deaa0a3e09aa5bb4"

        def install
          bin.install "imager"
        end
      end
    end
  end
end
