class Test-python-in-homebrew-build < Formula
  desc "Test the version of Python during the build of a Homebrew formula"
  homepage "https://github.com/lelegard/test-python-in-homebrew-build"
  url "https://github.com/lelegard/test-python-in-homebrew-build/archive/v1.tar.gz"
  sha256 ""
  license "BSD-2-Clause"
  head "https://github.com/lelegard/test-python-in-homebrew-build.git", branch: "master"

  depends_on "python2" => :build

  def install
    system "./test-python-in-homebrew-build.sh"
  end

  test do
    system "./test-python-in-homebrew-build.sh"
  end
end
