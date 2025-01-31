# This script is generated automatically by the release automation code in the
# Telepresence repository:
class Telepresence < Formula
  desc "Local dev environment attached to a remote Kubernetes cluster"
  homepage "https://telepresence.io"
  url "https://app.getambassador.io/download/tel2/darwin/amd64/2.6.8/telepresence"
  sha256 "d215a3c3c593e638d326643336b478892b1357a316dd9606c804ea3cb107bee8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://app.getambassador.io/download/tel2/darwin/amd64/2.6.8/telepresence"
      sha256 "d215a3c3c593e638d326643336b478892b1357a316dd9606c804ea3cb107bee8"
    end
    if Hardware::CPU.arm?
      url "https://app.getambassador.io/download/tel2/darwin/arm64/2.6.8/telepresence"
      sha256 "0a5561a113b732a512430067abe39e783e5e19eeab2151e89181e8cee260b3eb"
    end
  end

  # macfuse is a cask and formula can't depend on casks, so we can't actually
  # do this. This is probably fine since you don't _need_ macfuse to run
  # the cli, just to do mounts 
  #depends_on "macfuse"

  def install
    bin.install "telepresence"
  end

  test do
    system "#{bin}/telepresence", "--help"
  end
end
