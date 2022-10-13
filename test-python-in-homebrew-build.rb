class TestPythonInHomebrewBuild < Formula
  desc "Test the version of Python during the build of a Homebrew formula"
  homepage "https://github.com/lelegard/test-python-in-homebrew-build"
  url "https://github.com/lelegard/test-python-in-homebrew-build/archive/v1.tar.gz"
  sha256 "2ef4f71728486bcea55bfd0c39ddbab3241afe64383a6f78389925e36d97d939"
  license "BSD-2-Clause"
  head "https://github.com/lelegard/test-python-in-homebrew-build.git", branch: "master"

  depends_on "python3" => :build

  def install
    system "./test-python-in-homebrew-build.sh"
    bin.install "test-python-in-homebrew-build.sh"
  end

  test do
    system "#{bin}/test-python-in-homebrew-build.sh"
  end
end
