# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Binding to the GStreamer open source multimedia framework."
HOMEPAGE="http://www.haskell.org/gtk2hs/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/glib-0.11*
		dev-haskell/mtl
		>=dev-lang/ghc-6.10
		>=media-libs/gst-plugins-base-0.10
		>=media-libs/gstreamer-0.10"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6
		dev-haskell/gtk2hs-buildtools"

