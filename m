Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0101CE0044D
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 11:04:58 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 Apr 2012 11:04:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="87006509"
Received: from unknown (HELO [10.255.12.48]) ([10.255.12.48])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Apr 2012 11:04:57 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: kishore.k.bodke@intel.com
In-Reply-To: <7a988a33c1d49b6645b55076fe73cb9f2f4f2aaa.1333496206.git.kishore.k.bodke@intel.com>
References: <cover.1333496206.git.kishore.k.bodke@intel.com>
	<7a988a33c1d49b6645b55076fe73cb9f2f4f2aaa.1333496206.git.kishore.k.bodke@intel.com>
Date: Mon, 09 Apr 2012 13:04:09 -0500
Message-ID: <1333994649.2335.72.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 6/7] Cedartrail: Add a new recipe for Audio.
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
X-List-Received-Date: Mon, 09 Apr 2012 18:04:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-04-03 at 16:43 -0700, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
> 
> Adding a new recipe for including a Audio
> feature for the cedartrail bsp.
> 

As mentioned, I think the new way to do this is using asound.state (see
meta-intel/meta-n450/recipes-bsp/alsa-state/alsa-state/n450/asound.state
as an example).

Tom

> Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
> ---
>  .../cedartrail-audio/cedartrail-audio.bb           |   30 ++++++++++++++
>  .../cedartrail-audio/cedartrail-audio              |   42 ++++++++++++++++++++
>  2 files changed, 72 insertions(+), 0 deletions(-)
>  create mode 100644 meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio.bb
>  create mode 100644 meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio/cedartrail-audio
> 
> diff --git a/meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio.bb b/meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio.bb
> new file mode 100644
> index 0000000..9a43f02
> --- /dev/null
> +++ b/meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio.bb
> @@ -0,0 +1,30 @@
> +SUMMARY = "Provide a basic init script to enable audio"
> +DESCRIPTION = "Set the volume and unmute the Front mixer setting during boot."
> +SECTION = "base"
> +LICENSE = "MIT"
> +LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
> +
> +PR = "r0"
> +
> +inherit update-rc.d
> +
> +RDEPENDS = "alsa-utils-amixer"
> +
> +SRC_URI = "file://cedartrail-audio"
> +
> +INITSCRIPT_NAME = "cedartrail-audio"
> +INITSCRIPT_PARAMS = "defaults 90"
> +
> +do_install() {
> +	install -d ${D}${sysconfdir} \
> +	           ${D}${sysconfdir}/init.d
> +	install -m 0755 ${WORKDIR}/cedartrail-audio ${D}${sysconfdir}/init.d
> +        cat ${WORKDIR}/${INITSCRIPT_NAME} | \
> +            sed -e 's,/etc,${sysconfdir},g' \
> +                -e 's,/usr/sbin,${sbindir},g' \
> +                -e 's,/var,${localstatedir},g' \
> +                -e 's,/usr/bin,${bindir},g' \
> +                -e 's,/usr,${prefix},g' > ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
> +        chmod 755 ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
> +}
> +
> diff --git a/meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio/cedartrail-audio b/meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio/cedartrail-audio
> new file mode 100644
> index 0000000..efd08d3
> --- /dev/null
> +++ b/meta-cedartrail/recipes-bsp/cedartrail-audio/cedartrail-audio/cedartrail-audio
> @@ -0,0 +1,42 @@
> +#!/bin/sh
> +### BEGIN INIT INFO
> +# Provides:          cedartrail mixer setup
> +# Required-Start:    $syslog
> +# Required-Stop:     $syslog
> +# Default-Start:     2 3 4 5
> +# Default-Stop:      0 1 6
> +# Short-Description: Initialize the cedartrail audio mixer
> +# Description:       Unmute FRONT and set volume 
> +### END INIT INFO
> +
> +# Author: Darren Hart <dvhart@linux.intel.com>
> +# Based on /etc/init.d/skeleton
> +
> +PATH=/sbin:/usr/sbin:/bin:/usr/bin
> +DESC="Audio mixer settings"
> +NAME=cedartrail-audio
> +AMIXER=`which amixer`
> +SCRIPTNAME=/etc/init.d/$NAME
> +
> +# Exit if amixer is not installed
> +[ -x "$AMIXER" ] || exit 0
> +
> +do_start() {
> +	# Enable the "Front" simple controls (black phones jack)
> +	$AMIXER sset Front 90 on > /dev/null
> +}
> +
> +case "$1" in
> +start)
> +	echo "$NAME: setting default mixer settings."
> +	do_start
> +	;;
> +stop)
> +	;;
> +*)
> +	echo "Usage: $SCRIPTNAME {start|stop}" >&2
> +	exit 3
> +	;;
> +esac
> +
> +exit 0



