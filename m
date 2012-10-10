Return-Path: <darren.hart@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A23DE011C5
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2012 19:44:05 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 09 Oct 2012 19:44:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,563,1344236400"; d="scan'208";a="154428570"
Received: from unknown (HELO envy.home) ([10.255.13.222])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Oct 2012 19:44:04 -0700
Message-ID: <5074E0BB.6040109@intel.com>
Date: Tue, 09 Oct 2012 19:43:07 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: nitin.a.kamble@intel.com
References: <cover.1349831664.git.nitin.a.kamble@intel.com>
	<35b1c05ce67d1e95bb471f3db56a14c9c519498b.1349831664.git.nitin.a.kamble@intel.com>
In-Reply-To: <35b1c05ce67d1e95bb471f3db56a14c9c519498b.1349831664.git.nitin.a.kamble@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCHv2 1/5] xf86-video-intel: Bring 2.20.0 version to match released graphics stack
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 10 Oct 2012 02:44:05 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 10/09/2012 06:16 PM, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> The Intel Linux graphics stack version 12.07 released on 2012-07-24
> requires version 2.20.0 as seen here:
>    http://intellinuxgraphics.org/2012.07.html
> 
> Currently oecore has 2.19.0 version. So get this 2.20.0 version in
> meta-intel layer to be used by sugarbay and other BSPs using the
> Intel graphics stack.
> 
> Also took changes from version 2.20.8 recipe from Ross Burton's branch.

Saw you asked in a bug about the impact of this, I'd like to hear back
from Ross on the changes regarding xvmc and PACKAGECONFIG.

--
Darren

> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
>  .../xorg-driver/xf86-video-intel_2.20.0.bb         |   27 ++++++++++++++++
>  .../xorg-driver/xorg-driver-common.inc             |   33 ++++++++++++++++++++
>  .../xorg-driver/xorg-driver-video.inc              |    4 ++
>  3 files changed, 64 insertions(+), 0 deletions(-)
>  create mode 100644 common/recipes-graphics/xorg-driver/xf86-video-intel_2.20.0.bb
>  create mode 100644 common/recipes-graphics/xorg-driver/xorg-driver-common.inc
>  create mode 100644 common/recipes-graphics/xorg-driver/xorg-driver-video.inc
> 
> diff --git a/common/recipes-graphics/xorg-driver/xf86-video-intel_2.20.0.bb b/common/recipes-graphics/xorg-driver/xf86-video-intel_2.20.0.bb
> new file mode 100644
> index 0000000..6cfca03
> --- /dev/null
> +++ b/common/recipes-graphics/xorg-driver/xf86-video-intel_2.20.0.bb
> @@ -0,0 +1,27 @@
> +require xorg-driver-video.inc
> +
> +SUMMARY = "X.Org X server -- Intel integrated graphics chipsets driver"
> +
> +DESCRIPTION = "intel is an Xorg driver for Intel integrated graphics \
> +chipsets. The driver supports depths 8, 15, 16 and 24. On some chipsets, \
> +the driver supports hardware accelerated 3D via the Direct Rendering \
> +Infrastructure (DRI)."
> +
> +LIC_FILES_CHKSUM = "file://COPYING;md5=8730ad58d11c7bbad9a7066d69f7808e"
> +
> +PR = "${INC_PR}.0"
> +
> +DEPENDS += "virtual/libx11 drm xf86driproto glproto \
> +	    virtual/libgl xineramaproto xf86driproto libpciaccess"
> +
> +PACKAGECONFIG ??= ""
> +PACKAGECONFIG[sna] = "--enable-sna,--disable-sna"
> +PACKAGECONFIG[xvmc] = "--enable-xvmc,--disable-xvmc,libxvmc"
> +
> +# --enable-kms-only option is required by ROOTLESS_X
> +EXTRA_OECONF += '${@base_conditional( "ROOTLESS_X", "1", " --enable-kms-only", "", d )}'
> +
> +COMPATIBLE_HOST = '(i.86|x86_64).*-linux'
> +
> +SRC_URI[md5sum] = "070bb866b05a16366bd9bb844c9b91aa"
> +SRC_URI[sha256sum] = "21949297220ceda32bba430f778c6409002079dc717c7190dbd1062ab4a56783"
> diff --git a/common/recipes-graphics/xorg-driver/xorg-driver-common.inc b/common/recipes-graphics/xorg-driver/xorg-driver-common.inc
> new file mode 100644
> index 0000000..1ed2742
> --- /dev/null
> +++ b/common/recipes-graphics/xorg-driver/xorg-driver-common.inc
> @@ -0,0 +1,33 @@
> +DESCRIPTION = "X driver"
> +HOMEPAGE = "http://www.x.org"
> +BUGTRACKER = "https://bugs.freedesktop.org"
> +SECTION = "x11/drivers"
> +LICENSE = "MIT-X"
> +
> +PE = "2"
> +INC_PR = "r0"
> +
> +DEPENDS = "virtual/xserver xproto randrproto util-macros"
> +
> +SRC_URI = "${XORG_MIRROR}/individual/driver/${BPN}-${PV}.tar.bz2"
> +
> +S = "${WORKDIR}/${BPN}-${PV}"
> +
> +FILES_${PN} += " ${libdir}/xorg/modules/drivers/*.so"
> +FILES_${PN}-dbg += " ${libdir}/xorg/modules/drivers/.debug"
> +
> +inherit autotools pkgconfig
> +
> +# AC_CHECK_FILE doesn't work when cross compiling, so we create a replacement
> +# macro that simply assumes the test succeeds. 
> +do_configure_prepend () {
> +    echo 'AC_DEFUN(CC_AC_CHECK_FILE, $2)' > configure.ac.new
> +    sed 's/AC_CHECK_FILE/CC_AC_CHECK_FILE/g' configure.ac >> configure.ac.new
> +    mv configure.ac.new configure.ac
> +}
> +
> +# FIXME: We don't want to include the libtool archives (*.la) from modules
> +# directory, as they serve no useful purpose. Upstream should fix Makefile.am
> +do_install_append() {
> +	find ${D}${libdir}/xorg/modules -regex ".*\.la$" | xargs rm -f --
> +}
> diff --git a/common/recipes-graphics/xorg-driver/xorg-driver-video.inc b/common/recipes-graphics/xorg-driver/xorg-driver-video.inc
> new file mode 100644
> index 0000000..57c80d1
> --- /dev/null
> +++ b/common/recipes-graphics/xorg-driver/xorg-driver-video.inc
> @@ -0,0 +1,4 @@
> +include xorg-driver-common.inc
> +
> +DEPENDS =+ "renderproto videoproto xextproto fontsproto"
> +
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

