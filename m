Return-Path: <simonkbaby@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 083ECC636CD
	for <webhook@archiver.kernel.org>; Mon,  6 Feb 2023 01:05:41 +0000 (UTC)
Subject: Re: error when try to use sudo command in recipe
To: yocto@lists.yoctoproject.org
From: "SIMON BABY" <simonkbaby@gmail.com>
X-Originating-Location: San Diego, California, US (130.50.200.1)
X-Originating-Platform: Windows Chrome 109
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 05 Feb 2023 17:05:39 -0800
References: <21962.1675643497968965070@lists.yoctoproject.org>
In-Reply-To: <21962.1675643497968965070@lists.yoctoproject.org>
Message-ID: <32073.1675645539241169902@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XVF7idytAwzwl6nmBP8n"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Feb 2023 01:05:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59176

--XVF7idytAwzwl6nmBP8n
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

My bblayers.conf and local.conf is below

LCONF_VERSION =3D "7"

BBPATH =3D "${TOPDIR}"
BSPDIR :=3D "${@os.path.abspath(os.path.dirname(d.getVar('FILE', True)) + '=
/../..')}"

BBFILES ?=3D ""
BBLAYERS =3D " \
${BSPDIR}/sources/poky/meta \
${BSPDIR}/sources/poky/meta-poky \
\
${BSPDIR}/sources/meta-openembedded/meta-oe \
${BSPDIR}/sources/meta-openembedded/meta-multimedia \
${BSPDIR}/sources/meta-openembedded/meta-python \
\
${BSPDIR}/sources/meta-freescale \
${BSPDIR}/sources/meta-freescale-3rdparty \
${BSPDIR}/sources/meta-freescale-distro \
"

# i.MX Yocto Project Release layers
BBLAYERS +=3D "${BSPDIR}/sources/meta-imx/meta-bsp"
BBLAYERS +=3D "${BSPDIR}/sources/meta-imx/meta-sdk"
BBLAYERS +=3D "${BSPDIR}/sources/meta-imx/meta-ml"
BBLAYERS +=3D "${BSPDIR}/sources/meta-imx/meta-v2x"
BBLAYERS +=3D "${BSPDIR}/sources/meta-nxp-demo-experience"

BBLAYERS +=3D "${BSPDIR}/sources/meta-browser/meta-chromium"
BBLAYERS +=3D "${BSPDIR}/sources/meta-clang"
BBLAYERS +=3D "${BSPDIR}/sources/meta-openembedded/meta-gnome"
BBLAYERS +=3D "${BSPDIR}/sources/meta-openembedded/meta-networking"
BBLAYERS +=3D "${BSPDIR}/sources/meta-openembedded/meta-filesystems"
BBLAYERS +=3D "${BSPDIR}/sources/meta-qt6"
BBLAYERS +=3D "${BSPDIR}/sources/meta-virtualization"
BBLAYERS +=3D "${BSPDIR}/sources/meta-teledyne-wapng"
BBLAYERS +=3D "${BSPDIR}/sources/meta-security/meta-tpm"
BBLAYERS +=3D "${BSPDIR}/sources/meta-embedded-containers"

MACHINE ??=3D 'imx8mpevk'
DISTRO ?=3D 'fsl-imx-wayland'
PACKAGE_CLASSES ?=3D 'package_rpm'
EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"
USER_CLASSES ?=3D "buildstats"
PATCHRESOLVE =3D "noop"
BB_DISKMON_DIRS ??=3D "\
STOPTASKS,${TMPDIR},1G,100K \
STOPTASKS,${DL_DIR},1G,100K \
STOPTASKS,${SSTATE_DIR},1G,100K \
STOPTASKS,/tmp,100M,100K \
HALT,${TMPDIR},100M,1K \
HALT,${DL_DIR},100M,1K \
HALT,${SSTATE_DIR},100M,1K \
HALT,/tmp,10M,1K"
PACKAGECONFIG:append:pn-qemu-system-native =3D " sdl"
CONF_VERSION =3D "2"

DL_DIR ?=3D "${BSPDIR}/downloads/"
ACCEPT_FSL_EULA =3D "1"

# Switch to Debian packaging and include package-management in the image
PACKAGE_CLASSES =3D "package_deb"
EXTRA_IMAGE_FEATURES +=3D "package-management"
DISTRO_FEATURES:append =3D " tpm virtualization"

--XVF7idytAwzwl6nmBP8n
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Richard,<br /><br />My bblayers.conf and local.conf is below<br /><br />
<div>LCONF_VERSION =3D "7"</div>
<div>&nbsp;</div>
<div>BBPATH =3D "${TOPDIR}"</div>
<div>BSPDIR :=3D "${@os.path.abspath(os.path.dirname(d.getVar('FILE', True)=
) + '/../..')}"</div>
<div>&nbsp;</div>
<div>BBFILES ?=3D ""</div>
<div>BBLAYERS =3D " \</div>
<div>&nbsp; ${BSPDIR}/sources/poky/meta \</div>
<div>&nbsp; ${BSPDIR}/sources/poky/meta-poky \</div>
<div>&nbsp; \</div>
<div>&nbsp; ${BSPDIR}/sources/meta-openembedded/meta-oe \</div>
<div>&nbsp; ${BSPDIR}/sources/meta-openembedded/meta-multimedia \</div>
<div>&nbsp; ${BSPDIR}/sources/meta-openembedded/meta-python \</div>
<div>&nbsp; \</div>
<div>&nbsp; ${BSPDIR}/sources/meta-freescale \</div>
<div>&nbsp; ${BSPDIR}/sources/meta-freescale-3rdparty \</div>
<div>&nbsp; ${BSPDIR}/sources/meta-freescale-distro \</div>
<div>"</div>
<div>&nbsp;</div>
<div># i.MX Yocto Project Release layers</div>
<div>BBLAYERS +=3D "${BSPDIR}/sources/meta-imx/meta-bsp"</div>
<div>BBLAYERS +=3D "${BSPDIR}/sources/meta-imx/meta-sdk"</div>
<div>BBLAYERS +=3D "${BSPDIR}/sources/meta-imx/meta-ml"</div>
<div>BBLAYERS +=3D "${BSPDIR}/sources/meta-imx/meta-v2x"</div>
<div>BBLAYERS +=3D "${BSPDIR}/sources/meta-nxp-demo-experience"</div>
<div>&nbsp;</div>
<div>BBLAYERS +=3D "${BSPDIR}/sources/meta-browser/meta-chromium"</div>
<div>BBLAYERS +=3D "${BSPDIR}/sources/meta-clang"</div>
<div>BBLAYERS +=3D "${BSPDIR}/sources/meta-openembedded/meta-gnome"</div>
<div>BBLAYERS +=3D "${BSPDIR}/sources/meta-openembedded/meta-networking"</d=
iv>
<div>BBLAYERS +=3D "${BSPDIR}/sources/meta-openembedded/meta-filesystems"</=
div>
<div>BBLAYERS +=3D "${BSPDIR}/sources/meta-qt6"</div>
<div>BBLAYERS +=3D "${BSPDIR}/sources/meta-virtualization"</div>
<div>BBLAYERS +=3D "${BSPDIR}/sources/meta-teledyne-wapng"</div>
<div>BBLAYERS +=3D "${BSPDIR}/sources/meta-security/meta-tpm"</div>
<div>BBLAYERS +=3D "${BSPDIR}/sources/meta-embedded-containers"</div>
<div><br /><br /><br />
<div>MACHINE ??=3D 'imx8mpevk'</div>
<div>DISTRO ?=3D 'fsl-imx-wayland'</div>
<div>PACKAGE_CLASSES ?=3D 'package_rpm'</div>
<div>EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"</div>
<div>USER_CLASSES ?=3D "buildstats"</div>
<div>PATCHRESOLVE =3D "noop"</div>
<div>BB_DISKMON_DIRS ??=3D "\</div>
<div>&nbsp; &nbsp; STOPTASKS,${TMPDIR},1G,100K \</div>
<div>&nbsp; &nbsp; STOPTASKS,${DL_DIR},1G,100K \</div>
<div>&nbsp; &nbsp; STOPTASKS,${SSTATE_DIR},1G,100K \</div>
<div>&nbsp; &nbsp; STOPTASKS,/tmp,100M,100K \</div>
<div>&nbsp; &nbsp; HALT,${TMPDIR},100M,1K \</div>
<div>&nbsp; &nbsp; HALT,${DL_DIR},100M,1K \</div>
<div>&nbsp; &nbsp; HALT,${SSTATE_DIR},100M,1K \</div>
<div>&nbsp; &nbsp; HALT,/tmp,10M,1K"</div>
<div>PACKAGECONFIG:append:pn-qemu-system-native =3D " sdl"</div>
<div>CONF_VERSION =3D "2"</div>
<div>&nbsp;</div>
<div>DL_DIR ?=3D "${BSPDIR}/downloads/"</div>
<div>ACCEPT_FSL_EULA =3D "1"</div>
<div>&nbsp;</div>
<div># Switch to Debian packaging and include package-management in the ima=
ge</div>
<div>PACKAGE_CLASSES =3D "package_deb"</div>
<div>EXTRA_IMAGE_FEATURES +=3D "package-management"</div>
<div>DISTRO_FEATURES:append =3D " tpm virtualization"</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<br /><br /></div>

--XVF7idytAwzwl6nmBP8n--

