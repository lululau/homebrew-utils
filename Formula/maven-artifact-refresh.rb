class MavenArtifactRefresh < Formula
  desc "A small script for refresh artifact in local .m2 Maven repository"
  homepage "https://liuxiang.coding.net/p/utils/d/utils/git/tree/master"
  url "https://liuxiang.coding.net/p/utils/d/utils/git/raw/master/maven-artifact-refresh/maven-artifact-refresh", using: :nounzip
  sha256 "98e9136812a6c358ed2c48399571972f5ff020016fa4e90629b5f7c9c30b5ee1"
  version "1.0.0"

  depends_on "fzf" => :recommended

  def install
    bin.install 'maven-artifact-refresh'
  end
end
