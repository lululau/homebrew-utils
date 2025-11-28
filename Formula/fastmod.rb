class Fastmod < Formula
  desc "Fast, partial replacement for codemod (find/replace tool for programmers)"
  homepage "https://github.com/facebookincubator/fastmod"
  head "https://github.com/facebookincubator/fastmod.git", branch: "main"
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
