# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit base haskell-cabal

MY_PN="Codec-Image-DevIL"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="An FFI interface to the DevIL library"
HOMEPAGE="http://hackage.haskell.org/package/Codec-Image-DevIL"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.4.1:=
	media-libs/devil
	virtual/libc
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

S="${WORKDIR}/${MY_P}"

PATCHES=("${FILESDIR}"/${P}-ghc-7.8.patch)