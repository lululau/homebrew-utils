class MavenArtifactRefresh < Formula
  desc "A small script for refresh artifact in local .m2 Maven repository"
  homepage "https://liuxiang.coding.net/p/utils/d/utils/git/tree/master"
  url "https://liuxiang.coding.net/p/utils/d/utils/git/raw/master/maven-artifact-refresh/maven-artifact-refresh", using: :nounzip
  sha256 "8eb135b6b37e90180d81532e668647fad4b90d5ec1be69a219492f0ad94094c1"
  version "1.0.0"

  depends_on "fzf" => :recommended

  def install
    bin.install 'maven-artifact-refresh'
  end
end
