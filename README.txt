Test the version of Python during the build of a Homebrew formula

- Copy test-python-in-homebrew-build.rb in $(brew --repo)/Library/Taps/homebrew/homebrew-core/Formula
- brew install --build-from-source --verbose --debug test-python-in-homebrew-build

