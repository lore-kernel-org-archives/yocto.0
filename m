Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B1EFE00973; Sat, 13 May 2017 09:08:32 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3FD6E007DD
	for <yocto@yoctoproject.org>; Sat, 13 May 2017 09:08:29 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id 32638260687
To: yocto@yoctoproject.org
References: <1492013128-5920-1-git-send-email-ayaka@soulik.info>
	<1492013128-5920-2-git-send-email-ayaka@soulik.info>
From: Romain Perier <romain.perier@collabora.com>
Message-ID: <adaad901-675b-36a7-eb91-354762d8a69c@collabora.com>
Date: Sat, 13 May 2017 18:08:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1492013128-5920-2-git-send-email-ayaka@soulik.info>
Subject: Re: [meta-rockchip] [PATCH v2 1/3] recipes-multimedia: add Rockchip MPP library
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
X-List-Received-Date: Sat, 13 May 2017 16:08:32 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

Hello,


Le 12/04/2017 à 18:05, ayaka a écrit :
> MPP means Media Process Platform. The MPP is a middleware
> for the other video encoder/decoder interface, translating
> the video information into the hardware registers.
>
> Signed-off-by: ayaka <ayaka@soulik.info>

Please Signed-off-by with your Real name please "FirstName LastName
<ayaka@soulik.info>"

> ---
>  recipes-multimedia/rockchip-mpp/rockchip-mpp.inc    | 21 +++++++++++++++++++++
>  .../rockchip-mpp/rockchip-mpp_20170412.bb           |  9 +++++++++
>  recipes-multimedia/rockchip-mpp/rockchip-mpp_git.bb | 16 ++++++++++++++++
>  3 files changed, 46 insertions(+)
>  create mode 100644 recipes-multimedia/rockchip-mpp/rockchip-mpp.inc
>  create mode 100644 recipes-multimedia/rockchip-mpp/rockchip-mpp_20170412.bb
>  create mode 100644 recipes-multimedia/rockchip-mpp/rockchip-mpp_git.bb
>
> diff --git a/recipes-multimedia/rockchip-mpp/rockchip-mpp.inc b/recipes-multimedia/rockchip-mpp/rockchip-mpp.inc
> new file mode 100644
> index 0000000..6a45637
> --- /dev/null
> +++ b/recipes-multimedia/rockchip-mpp/rockchip-mpp.inc
> @@ -0,0 +1,21 @@
> +# Copyright (C) 2016 - 2017 Randy Li <ayaka@soulik.info>
> +# Released under the GNU GENERAL PUBLIC LICENSE Version 2
> +# (see COPYING.GPLv2 for the terms)
> +
> +LICENSE = "Apache-2.0"
> +LIC_FILES_CHKSUM = "file://inc/rk_mpi.h;beginline=4;endline=14;md5=acbba394ae5639b0c786f60c1f48e3d6"
> +
> +inherit pkgconfig cmake
> +
> +EXTRA_OECMAKE = "     \
> +    -DRKPLATFORM=ON   \
> +    -DHAVE_DRM=ON     \
> +"
> +
> +PACKAGES = "${PN}-dbg ${PN}-staticdev ${PN}-dev ${PN} rockchip-vpu"

The recipe is named rockchip-mpp, so don't create a package with another
name, it might be confusing and it's not standard.
I suggest "rockchip-mpp-vpu" or "rockchip-mpp-vpu_plugin" or something
like this.

> +FILES_rockchip-vpu = "${libdir}/lib*vpu${SOLIBS}"
> +FILES_${PN} = "${libdir}/lib*mpp${SOLIBS}"
> +FILES_${PN}-dev = "${libdir}/lib*${SOLIBSDEV} ${includedir} ${libdir}/pkgconfig"
> +SECTION_${PN}-dev = "devel"
> +FILES_${PN}-staticdev = "${libdir}/*.a"
> +SECTION_${PN}-staticdev = "devel"
> diff --git a/recipes-multimedia/rockchip-mpp/rockchip-mpp_20170412.bb b/recipes-multimedia/rockchip-mpp/rockchip-mpp_20170412.bb
> new file mode 100644
> index 0000000..501306a
> --- /dev/null
> +++ b/recipes-multimedia/rockchip-mpp/rockchip-mpp_20170412.bb
> @@ -0,0 +1,9 @@
> +# Copyright (C) 2016 - 2017 Randy Li <ayaka@soulik.info>
> +# Released under the GNU GENERAL PUBLIC LICENSE Version 2
> +# (see COPYING.GPLv2 for the terms)
> +include rockchip-mpp.inc
> +
> +TAG = "release_${PV}"
> +SRC_URI = "git://github.com/rockchip-linux/mpp.git;tag=${TAG};nobranch=1"
> +
> +S = "${WORKDIR}/git"
> diff --git a/recipes-multimedia/rockchip-mpp/rockchip-mpp_git.bb b/recipes-multimedia/rockchip-mpp/rockchip-mpp_git.bb
> new file mode 100644
> index 0000000..23f3f15
> --- /dev/null
> +++ b/recipes-multimedia/rockchip-mpp/rockchip-mpp_git.bb
> @@ -0,0 +1,16 @@
> +# Copyright (C) 2016 - 2017 Randy Li <ayaka@soulik.info>
> +# Released under the GNU GENERAL PUBLIC LICENSE Version 2
> +# (see COPYING.GPLv2 for the terms)
> +
> +DEFAULT_PREFERENCE = "-1"
> +
> +include rockchip-mpp.inc
> +DEPENDS = "git-replacement-native"
> +
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +FILESPATH_prepend := "${THISDIR}/${PN}:"
> +
> +SRCREV = "${AUTOREV}"
> +SRC_URI = "git://github.com/rockchip-linux/mpp.git;branch=develop"
> +
> +S = "${WORKDIR}/git"
The rest looks good, I need to test it.

