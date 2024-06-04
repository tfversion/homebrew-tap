# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfversion < Formula
  desc "A simple tool to manage Terraform versions"
  homepage "https://github.com/tfversion/tfversion"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/tfversion/tfversion/releases/download/v0.1.10/tfversion_0.1.10_darwin_amd64.tar.gz"
      sha256 "57a44c147e061885b683312c7bbc62338ba9859ff29664a73eb9a2c308c0faa2"

      def install
        bin.install "tfversion"
      end
    end
    on_arm do
      url "https://github.com/tfversion/tfversion/releases/download/v0.1.10/tfversion_0.1.10_darwin_arm64.tar.gz"
      sha256 "4b5ad2c704876b8f80e3ef07d7dadd83dca865b6479fcccb238a9425bf038e4a"

      def install
        bin.install "tfversion"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tfversion/tfversion/releases/download/v0.1.10/tfversion_0.1.10_linux_amd64.tar.gz"
        sha256 "25e57d7d29d36bf50ff754815ada7e76f1cc8094688e4129af34c89e3a3d4718"

        def install
          bin.install "tfversion"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tfversion/tfversion/releases/download/v0.1.10/tfversion_0.1.10_linux_arm64.tar.gz"
        sha256 "5754dcc491b87a886b08f0ebe4671f7bcac4495ecfb60d7c82208d42e50d3e3d"

        def install
          bin.install "tfversion"
        end
      end
    end
  end

  test do
    system "#{bin}/tfversion -v"
  end
end
