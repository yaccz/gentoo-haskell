# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit base haskell-cabal

DESCRIPTION="The Haskell Cryptographic Library"
HOMEPAGE="http://www.haskell.org/crypto/"
SRC_URI="http://www.haskell.org/http/download/${P}-http.tar.gz"
LICENSE="as-is"
SLOT="${PV}"

KEYWORDS="~x86"
IUSE=""

DEPEND=">=virtual/ghc-6.4"

S=${WORKDIR}/${PN}

src_unpack() {
	base_src_unpack
	sed -i 's/Build-Depends:/Build-Depends: haskell98,/' ${S}/crypto.cabal
}
