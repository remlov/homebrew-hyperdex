require 'formula'

class Hyperleveldb < Formula
  homepage 'http://hyperdex.org'
  url 'http://hyperdex.org/src/hyperleveldb-1.2.2.tar.gz'
  sha256 '1e03ac6ebe053128978cefe09ae3316f728ebbc186c22316d826ec185cffdf34'

  def install
    ENV['PKG_CONFIG_PATH']="#{HOMEBREW_PREFIX}/lib/pkgconfig"
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
