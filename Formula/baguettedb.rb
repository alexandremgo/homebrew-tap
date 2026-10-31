class Baguettedb < Formula
  desc "Data layer for your AI agents: one structured database per topic"
  homepage "https://baguettedb.com"
  license "FSL-1.1-ALv2"

  on_macos do
    on_arm do
      url "https://github.com/alexandremgo/baguettedb/releases/download/v0.2.0/bdb_v0.2.0_darwin_arm64.tar.gz"
      sha256 "078fa5649ebb4cd5f55b8f62fd682eeaa89fbf8aaacab4dc81629bd4ba8d8caf"
    end
    on_intel do
      url "https://github.com/alexandremgo/baguettedb/releases/download/v0.2.0/bdb_v0.2.0_darwin_amd64.tar.gz"
      sha256 "69b90421ce99e9262c1a877047efcb6eda45a99f7110f452aedf34b5bbde7b08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alexandremgo/baguettedb/releases/download/v0.2.0/bdb_v0.2.0_linux_arm64.tar.gz"
      sha256 "beafff89e9d1cd51d040705e355529a5c24731dac4001430608bc8ddaa3d0f15"
    end
    on_intel do
      url "https://github.com/alexandremgo/baguettedb/releases/download/v0.2.0/bdb_v0.2.0_linux_amd64.tar.gz"
      sha256 "e4e7291f4045aa2ba9728b6cf974b9e69d80bd5bc6582e133c1781dba2af93ab"
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
