# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="BSON documents are JSON-like objects with a standard binary encoding"
HOMEPAGE="http://github.com/TonyGen/bson-haskell"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="dev-haskell/binary
		dev-haskell/compact-string-fix
		dev-haskell/cryptohash
		dev-haskell/data-binary-ieee754
		>=dev-haskell/mtl-2
		dev-haskell/network
		dev-haskell/time
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		dev-haskell/cabal
		test? ( dev-haskell/file-location
				>=dev-haskell/hspec-0.8
				dev-haskell/hunit
				=dev-haskell/quickcheck-2.4*:2
		)"

src_prepare() {
	sed -e 's@hspec >= 0.6.1 && < 0.7@hspec >= 0.6.1 \&\& < 0.10@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}

src_configure() {
	cabal_src_configure $(use_enable test tests)
}
