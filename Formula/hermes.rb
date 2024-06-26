require 'json'
require 'formula'
require_relative 'lib/private'
require_relative 'lib/artifactory'

class Hermes < Formula
  release = JSON.parse(File.open(File.expand_path("../../hermes/release.json", __FILE__)).read)

  version release["version"]
  if Hardware::CPU.arm?
    url "https://github.com/jamf/k8s-hermes-cli/releases/download/#{version}/hermes-darwin-arm64.tar.gz", :using => DownloadFactory
    sha256 release["armsha"]
  end
  if Hardware::CPU.intel?
    url "https://github.com/jamf/k8s-hermes-cli/releases/download/#{version}/hermes-darwin-amd64.tar.gz", :using => DownloadFactory
    sha256 release["amdsha"]
  end
  
  desc "Hermes CLI"
  homepage "https://github.com/jamf/k8s-hermes-cli"

  def install
    bin.install "hermes"
    bash_completion.install "completions/hermes.bash" => "hermes"
    zsh_completion.install "completions/hermes.zsh" => "_hermes"
    fish_completion.install "completions/hermes.fish"
  end

  test do
    
  end
end
