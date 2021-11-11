
class Noise < Formula
  # repository information
  head "https://github.com/trammell/noise.git"
  homepage 'https://github.com/trammell/noise'

  # utility information
  version 'v0.1.0'
  
  # macOS
  on_macos do
    if Hardware::CPU.arm?
      url "#{homepage}/releases/download/#{version}/noise_darwin_arm64.tar.gz"
      sha256 '00000'
    else
      url "#{homepage}/releases/download/#{version}/noise_darwin_amd64.tar.gz"
      sha256 '00000'
    end
  end
    
  # linux
  on_linux do
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "#{homepage}/releases/download/#{version}/noise_linux_arm64.tar.gz"
        sha256 '00000'
      else
        url "#{homepage}/releases/download/#{version}/noise_linux_arm.tar.gz"
        sha256 '00000'
      end
    else
      url "#{homepage}/releases/download/#{version}/noise_linux_amd64.tar.gz"
      sha256 '00000'
    end
  end
  
  # install information
  def install
    bin.install 'noise'
  end

  # test information
  test do
    system "#{bin}/noise", "--version"
  end
end
