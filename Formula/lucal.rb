class Lucal < Formula
  desc "Modern TUI lunar calendar CLI with interactive Bubble Tea interface"
  homepage "https://github.com/lululau/lucal"
  url "https://github.com/lululau/lucal.git",
      tag:      "v1.0.1",
      revision: "c1da745be5811de21a40ab5a2608395fd7cdd7cf"
  license "Apache-2.0"
  head "https://github.com/lululau/lucal.git", branch: "develop"

  depends_on "go" => :build

  resource "holidays" do
    url "https://raw.githubusercontent.com/lululau/lucal/main/holidays.json"
    sha256 "cf99a3a46c12dfe480816d359d1bfb87fcd4ca2e85a07455b9d32d0705cfcc29"
  end

  def install
    ldflags = %W[
      -s -w
      -X github.com/lululau/lucal/cmd.version=#{version}
      -X github.com/lululau/lucal/cmd.commit=#{Utils.git_head}
      -X github.com/lululau/lucal/cmd.date=#{Date.today.strftime '%Y-%m-%dT%H:%M:%SZ'}
    ]
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/lucal"

    # Install holidays data to XDG cache directory
    # Create the cache directory structure
    cache_dir = "#{ENV["HOME"]}/Library/Caches/lucal"
    mkdir_p cache_dir

    # Install the holidays.json file to the cache directory
    resource("holidays").stage do
      cp "holidays.json", "#{cache_dir}/holidays.json"
    end
  end

  test do
    assert_match "用法:", shell_output("#{bin}/lucal --help")
    assert_match "当前月", shell_output("#{bin}/lucal -n")
  end
end
