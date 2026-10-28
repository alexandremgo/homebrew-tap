class Baguettedb < Formula
  desc "Data layer for your AI agents: one structured database per topic"
  homepage "https://baguettedb.com"
  license "FSL-1.1-ALv2"

  on_macos do
    on_arm do
      url "https://github.com/alexandremgo/baguettedb/releases/download/v0.1.0/bdb_v0.1.0_darwin_arm64.tar.gz"
      sha256 "4297f901f42c2ca741524cd1a029021bde8984eb28787763d235959209a6d4ff"
    end
    on_intel do
      url "https://github.com/alexandremgo/baguettedb/releases/download/v0.1.0/bdb_v0.1.0_darwin_amd64.tar.gz"
      sha256 "142ea91cdd48f09bc78cd18b464d272f62897eaf9a3a1cbf48e91a8a3e61881b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alexandremgo/baguettedb/releases/download/v0.1.0/bdb_v0.1.0_linux_arm64.tar.gz"
      sha256 "93f8d0e26326979d0333cc171b9a039cff9decf63efe7f1f7951be1c9f173bc0"
    end
    on_intel do
      url "https://github.com/alexandremgo/baguettedb/releases/download/v0.1.0/bdb_v0.1.0_linux_amd64.tar.gz"
      sha256 "78cb085741f1ca5301e59f328dc8a0c1887fb8c6366c8b1b48781acb7c808aa9"
    end
  end

  def install
    bin.install "bdb"
    bin.install_symlink "bdb" => "baguettedb"
    prefix.install "LICENSE.md", "THIRD_PARTY_LICENSES"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bdb version")
    assert_match version.to_s, shell_output("#{bin}/baguettedb version")
  end
end
