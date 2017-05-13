Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D43D8E00973; Sat, 13 May 2017 09:16:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 649E1E007DD
	for <yocto@yoctoproject.org>; Sat, 13 May 2017 09:16:09 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id 5C139260687
To: yocto@yoctoproject.org
References: <1492013128-5920-1-git-send-email-ayaka@soulik.info>
	<1492013128-5920-3-git-send-email-ayaka@soulik.info>
From: Romain Perier <romain.perier@collabora.com>
Message-ID: <a224eda7-602e-8d00-ad0b-305dd1b04af8@collabora.com>
Date: Sat, 13 May 2017 18:16:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1492013128-5920-3-git-send-email-ayaka@soulik.info>
Subject: Re: [meta-rockchip] [PATCH v2 2/3] recipes-multimedia: add gstreamer rockchip support
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 13 May 2017 16:16:12 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

Hello,


Le 12/04/2017 à 18:05, ayaka a écrit :
> This Gstreamer plugin provides a encoder and decoder plugin
> for Gstreamer through the Rockchip MPP library.
>
> Signed-off-by: ayaka <ayaka@soulik.info>
> ---
>  .../gstreamer/gstreamer1.0-rockchip.inc            | 40 ++++++++++++++++++++++
>  .../gstreamer/gstreamer1.0-rockchip_20170412.bb    |  9 +++++
>  .../gstreamer/gstreamer1.0-rockchip_git.bb         | 13 +++++++
>  3 files changed, 62 insertions(+)
>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-rockchip.inc
>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-rockchip_20170412.bb
>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-rockchip_git.bb
>
> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-rockchip.inc b/recipes-multimedia/gstreamer/gstreamer1.0-rockchip.inc
> new file mode 100644
> index 0000000..0bd70ab
> --- /dev/null
> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-rockchip.inc
> @@ -0,0 +1,40 @@
> +# Copyright (C) 2016 - 2017 Randy Li <ayaka@soulik.info>
> +# Released under the GNU GENERAL PUBLIC LICENSE Version 2
> +# (see COPYING.GPLv2 for the terms)
> +
> +require recipes-multimedia/gstreamer/gstreamer1.0-plugins.inc
> +
> +DESCRIPTION = "GStreamer 1.0 plugins for Rockchip platforms"
> +
> +LICENSE = "GPLv2"
> +LIC_FILES_CHKSUM = "file://COPYING;md5=6d1e4aa87f6192354d3de840cf774d93"
> +DEPENDS += "gstreamer1.0-plugins-base rockchip-mpp"
> +
> +SRC_URI_remove = " \
> +    file://0001-introspection.m4-prefix-pkgconfig-paths-with-PKG_CON.patch \
I suggest to add a comment if you remove this patch (explain why)
> +"
> +
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +FILESPATH_prepend := "${THISDIR}/${PN}:"
> +
> +inherit gettext autotools pkgconfig

autotools and pkgconfig are already inherited by gstreamer1.0-plugins.inc

> +
> +PACKAGECONFIG ??= " \
> +    mpp             \
> +"
> +PACKAGECONFIG[mpp]    = "--enable-rockchipmpp,--disable-rockchipmpp,rockchip-mpp"
> +PACKAGECONFIG[vpudec] = "--enable-vpudec,--disable-vpudec,rockchip-vpu"
> +PACKAGECONFIG[drm]    = "--enable-drmrockchip,--disable-drmrockchip,libdrm-rockchip"
> +PACKAGECONFIG[egl]    = "--enable-armmali,--disable-armmali,arm-mali"
> +
> +EXTRA_OECONF += "    \
> +    --disable-kms    \

Why do you disable kms ?

> +"
> +EXTRA_OECONF_remove = "--disable-gtk-doc"
> +
> +do_configure[prefuncs] = " delete_pkg_m4_file"
comments ?
> +
> +do_configure() {
> +    NOCONFIGURE=true ${S}/autogen.sh
> +    oe_runconf
> +}
> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-rockchip_20170412.bb b/recipes-multimedia/gstreamer/gstreamer1.0-rockchip_20170412.bb
> new file mode 100644
> index 0000000..e3fecaf
> --- /dev/null
> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-rockchip_20170412.bb
> @@ -0,0 +1,9 @@
> +# Copyright (C) 2016 - 2017 Randy Li <ayaka@soulik.info>
> +# Released under the GNU GENERAL PUBLIC LICENSE Version 2
> +# (see COPYING.GPLv2 for the terms)
> +include gstreamer1.0-rockchip.inc
> +
> +TAG = "release_${PV}"
> +SRC_URI = "git://github.com/rockchip-linux/gstreamer-rockchip.git;tag=${TAG};nobranch=1"
> +
> +S = "${WORKDIR}/git"
> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-rockchip_git.bb b/recipes-multimedia/gstreamer/gstreamer1.0-rockchip_git.bb
> new file mode 100644
> index 0000000..bd20121
> --- /dev/null
> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-rockchip_git.bb
> @@ -0,0 +1,13 @@
> +# Copyright (C) 2016 - 2017 Randy Li <ayaka@soulik.info>
> +# Released under the GNU GENERAL PUBLIC LICENSE Version 2
> +# (see COPYING.GPLv2 for the terms)
> +
> +DEFAULT_PREFERENCE = "-1"
What is this variable ?
> +
> +include gstreamer1.0-rockchip.inc
> +
> +SRCBRANCH ?= "develop"
> +SRCREV = "${AUTOREV}"
> +SRC_URI = "git://github.com/rockchip-linux/gstreamer-rockchip.git;branch=develop"
> +
> +S = "${WORKDIR}/git"

That's globally a good work, thanks for this, please send a v2 with
modifications, and include your real name in all patches.

Thanks,
Romain

