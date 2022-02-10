class Sentrypeer < Formula
  desc "SIP honeypot for a distributed p2p list of bad actor IP addresses and phone numbers"
  homepage "https://sentrypeer.org"
  url "https://github.com/SentryPeer/SentryPeer/releases/download/v1.0.0/sentrypeer-1.0.0.tar.gz"
  sha256 "bfad4a572a3d7b17aa62b1642cc38b4ee786393068aeaa101ec3bcaf4ab970fd"
  license any_of: ["GPL-2.0-only", "GPL-3.0-only"]

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "pkg-config" => :build
  depends_on "cmocka" => [:build, :test]
  depends_on "curl" => [:build, :test]
  depends_on "libosip"
  depends_on "jansson"
  depends_on "libmicrohttpd"
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
