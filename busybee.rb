require 'formula'

class Busybee < Formula
  homepage 'http://hyperdex.org'
  url 'http://hyperdex.org/src/busybee-0.7.0.tar.gz'
  sha256 '244bcf8face6be9b7df12c8dbd5401f7d4d78a9fa3c3f701177725526a18e121'

  depends_on 'autoconf'
  depends_on 'automake'
  depends_on 'autoconf-archive'
  depends_on 'libtool'
  depends_on 'pkg-config'

  depends_on 'libpo6'
  depends_on 'libe'

  def install
    ENV['PKG_CONFIG_PATH']="#{HOMEBREW_PREFIX}/lib/pkgconfig"
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
