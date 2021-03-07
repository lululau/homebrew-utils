class Fastmod < Formula
  desc "Fast partial replacement for the codemod tool"
  homepage "https://github.com/lululau/fastmod"
  url "https://github.com/lululau/fastmod/archive/0.4.1a.tar.gz"
  sha256 "e7cdfcbb3d4d6dbd5568b6c00f46c07a02404ab9f5c9d7df8511c6dfe0cbd556"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    (testpath/"input.txt").write("Hello, World!")
    system bin/"fastmod", "-d", testpath, "--accept-all", "World", "fastmod"
    assert_equal "Hello, fastmod!", (testpath/"input.txt").read
  end
end
