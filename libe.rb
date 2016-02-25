require 'formula'

class Libe < Formula
  homepage 'http://hyperdex.org'
  url 'http://hyperdex.org/src/libe-0.9.0.tar.gz'
  sha256 'c1b92dcfeee694038a8d16d43923bc7725a995d42f53f1da1efbad0e4ab479e3'

  depends_on 'autoconf'
  depends_on 'automake'
  depends_on 'autoconf-archive'
  depends_on 'libtool'
  depends_on 'pkg-config'

  depends_on 'libpo6'

  def install
    ENV['PKG_CONFIG_PATH']="#{HOMEBREW_PREFIX}/lib/pkgconfig"
    system "autoreconf", "-i"
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
