class Noise < Formula
  # repository information
  head "https://github.com/trammell/noise.git"
  homepage 'https://github.com/trammell/noise'
  version 'v0.1.0'
  url "#{homepage}/archive/refs/tags/0.1.tar.gz"
  sha256 'ff00432eaa06b06a99374b3787be689e1e099977'

  def install
    bin.install 'noise'
  end

  test do
    system "#{bin}/noise", "1"
  end
end
