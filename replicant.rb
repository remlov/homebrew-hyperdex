require 'formula'

class Replicant < Formula
  homepage 'http://hyperdex.org'
  url 'http://hyperdex.org/src/replicant-0.8.1.tar.gz'
  sha256 '77515fb6bafcf63acf6f69841b2b3067dc10f156b4b04a10257ed29f1115b9e6'

  depends_on 'autoconf'
  depends_on 'automake'
  depends_on 'autoconf-archive'
  depends_on 'libtool'
  depends_on 'pkg-config'

  depends_on 'popt'
  depends_on 'glog'
  depends_on 'google-sparsehash'
  depends_on 'libpo6'
  depends_on 'libe'
  depends_on 'busybee'
  depends_on 'hyperleveldb'

  def install
    ENV['PKG_CONFIG_PATH']="#{HOMEBREW_PREFIX}/lib/pkgconfig"
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
