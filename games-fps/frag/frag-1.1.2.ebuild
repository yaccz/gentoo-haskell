# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.4.9999

CABAL_FEATURES="bin"
inherit base haskell-cabal

DESCRIPTION="A 3-D First Person Shooter Game"
HOMEPAGE="http://haskell.org/haskellwiki/Frag"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6.0.3
	dev-haskell/glut
	>=dev-haskell/opengl-2.0
	dev-haskell/random
	>=dev-lang/ghc-6.10.4
"

PATCHES=("${FILESDIR}"/${P}-unrust.patch)
