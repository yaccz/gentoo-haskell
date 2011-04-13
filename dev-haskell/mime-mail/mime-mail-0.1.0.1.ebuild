# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Compose MIME email messages."
HOMEPAGE="http://github.com/snoyberg/mime-mail"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="<dev-haskell/blaze-builder-0.4
		>=dev-haskell/dataenc-0.13
		<dev-haskell/text-0.12
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@dataenc             >= 0.13.0.4   && < 0.14@dataenc             >= 0.13.0.4   \&\& < 0.15@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dataenc dependency"
	sed -e 's@blaze-builder       >= 0.2.1      && < 0.3@blaze-builder       >= 0.2.1      \&\& < 0.4@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen blaze-builder dependency"
}
