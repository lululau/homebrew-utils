class LldbMi < Formula
  desc "lldb-mi"
  homepage "https://github.com/lldb-tools/lldb-mi"
  url "https://github.com/lldb-tools/lldb-mi.git", branch: "main", revision: "2388bd7"
  version "1.0.0"

  depends_on "cmake" => :build
  depends_on "llvm"

  def install
    system "LLVM_DIR=#{Formula["llvm"].lib}/cmake/llvm cmake ."
    system "cmake --build ."
    bin.install 'src/lldb-mi'
  end
end
