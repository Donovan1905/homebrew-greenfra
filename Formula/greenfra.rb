# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Greenfra < Formula
  desc "Estimate the environmental impact of your infrastructure change within your Terraform projects!"
  homepage "https://github.com/Donovan1905/Greenfra"
  version "0.4.0"

  depends_on "elvish" => :optional
  depends_on "fish" => "v1.2.3"
  depends_on "git" if OS.mac?
  depends_on "zsh" => :optional

  on_macos do
    on_intel do
      url "https://github.com/Donovan1905/greenfra/releases/download/v0.4.0/Greenfra_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy,
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "570a5dfd782a69a6ceae1d067cd8213d9e787ba8712e53b907f4f9af07f3a65b"

      def install
        bin.install "Greenfra"
      end
    end
    on_arm do
      url "https://github.com/Donovan1905/greenfra/releases/download/v0.4.0/Greenfra_Darwin_arm64.tar.gz", using: CurlDownloadStrategy,
        headers: [
          "Accept: application/octet-stream",
          "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
        ]
      sha256 "ef540cfe7cdf40c42e099b81ac5d9f3df191ce68296fa91de46ab59e94692b08"

      def install
        bin.install "Greenfra"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Donovan1905/greenfra/releases/download/v0.4.0/Greenfra_Linux_x86_64.tar.gz", using: CurlDownloadStrategy,
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "b2281d091b817bea29dc3cf7ca87db06689c198ef960706a25b71a52dc98392e"

        def install
          bin.install "Greenfra"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Donovan1905/greenfra/releases/download/v0.4.0/Greenfra_Linux_arm64.tar.gz", using: CurlDownloadStrategy,
          headers: [
            "Accept: application/octet-stream",
            "Authorization: bearer #{ENV["HOMEBREW_GITHUB_API_TOKEN"]}"
          ]
        sha256 "6a2190bd4b04bc08aad1db9485a2bab477da19bd1563f22d1cf6372b9df9e852"

        def install
          bin.install "Greenfra"
        end
      end
    end
  end

  conflicts_with "svn"
  conflicts_with "bash"
end
