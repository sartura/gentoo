# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

DESCRIPTION="C implementation of getblocktemplate (BIP 22)"
HOMEPAGE="https://github.com/bitcoin/libblkmaker"
LICENSE="MIT"

SRC_URI="https://github.com/bitcoin/libblkmaker/archive/v${PV}.tar.gz -> ${P}-github.tgz"
SLOT="0/7"
KEYWORDS="~amd64 ~arm ~ppc ~ppc64 ~x86"
IUSE=""

DEPEND="
	>=dev-libs/jansson-2.0.0
	dev-libs/libbase58
"
RDEPEND="${DEPEND}
	!<net-misc/bfgminer-3.0.3
"

src_prepare() {
	./autogen.sh || die
}
