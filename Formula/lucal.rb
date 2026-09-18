class Lucal < Formula
  desc "Modern TUI lunar calendar CLI with interactive Bubble Tea interface"
  homepage "https://github.com/lululau/lucal"
  url "https://github.com/lululau/lucal.git",
      tag:      "v1.1.0",
      revision: "97df264953df53c2b78dee7c53095bdcb2363ab1"
  license "Apache-2.0"
  head "https://github.com/lululau/lucal.git", branch: "develop"

  depends_on "go" => :build

  resource "holidays" do
    url "https://raw.githubusercontent.com/lululau/lucal/v1.1.0/holidays.json"
    sha256 "3c3f209e26c66d730d5ea3bfae0f3f9889e4276f5bf799d0eb5b91b6f638972b"
  end

  def install
    ldflags = %W[
      -s -w
      -X github.com/lululau/lucal/cmd.version=#{version}
      -X github.com/lululau/lucal/cmd.commit=#{Utils.git_head}
      -X github.com/lululau/lucal/cmd.date=#{Date.today.strftime "%Y-%m-%dT%H:%M:%SZ"}
    ]
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/lucal"

    # Install holidays data to XDG cache directory
    # Create the cache directory structure
    cache_dir = "#{Dir.home}/Library/Caches/lucal"
    mkdir_p cache_dir

    # Install the holidays.json file to the cache directory
    resource("holidays").stage do
      cp "holidays.json", "#{cache_dir}/holidays.json"
    end
  end

  test do
    assert_match "用法:", shell_output("#{bin}/lucal --help")
    assert_match(/\d{4} 年 \d{1,2} 月/, shell_output("#{bin}/lucal -n"))
  end
end
