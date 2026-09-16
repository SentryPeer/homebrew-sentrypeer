class Sentrypeer < Formula
  desc "Honeypot for a distributed p2p list of bad actor IP addresses and phone numbers"
  homepage "https://sentrypeer.org"
  url "https://github.com/SentryPeer/SentryPeer/releases/download/v4.0.5/sentrypeer-4.0.5.tar.gz"
  sha256 "e7342207cf85c5ad5be7ed03b98efb28eb42849d74fa62f19690173ef301c2a3"
  license any_of: ["GPL-2.0-only", "GPL-3.0-only"]

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "cmake" => :build
  depends_on "cmocka" => [:build, :test]
  depends_on "curl" => [:build, :test]
  depends_on "pkg-config" => :build
  depends_on "rust" => [:build, :test]
  depends_on "curl"
  depends_on "jansson"
  depends_on "libmicrohttpd"
  depends_on "libosip"
  depends_on "libtool"
  depends_on "opendht"
  depends_on "ossp-uuid"
  depends_on "pcre2"

  def install
    system "./configure", *std_configure_args, "--disable-silent-rules"
    system "make", "install"
  end

  test do
    system "make", "check"
    system "sentrypeer", "-V"
  end
end
