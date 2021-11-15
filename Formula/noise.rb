class Noise < Formula
  # repository information
  head "https://github.com/trammell/noise.git"
  homepage 'https://github.com/trammell/noise'
  version 'v0.1.0'
  url "#{homepage}/archive/refs/tags/0.1.tar.gz"
  sha256 '78a2768a6c8edd13428fc5350c5943776edf5ff0205ce2356626241b02551650'

  def install
    bin.install 'noise'
  end

  test do
    system "#{bin}/noise", "1"
  end
end
