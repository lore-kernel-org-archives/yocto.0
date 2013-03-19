Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB5A2E006AD
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 14:59:58 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Mar 2013 14:59:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,874,1355126400"; d="scan'208";a="309101356"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 19 Mar 2013 14:59:57 -0700
Received: by linux.intel.com (Postfix, from userid 48)
	id 0CE732C8001; Tue, 19 Mar 2013 14:59:51 -0700 (PDT)
Received: from 10.7.202.65 (SquirrelMail authenticated user kevin.strasser)
	by linux.intel.com with HTTP; Tue, 19 Mar 2013 14:59:51 -0700 (PDT)
Message-ID: <36911.10.7.202.65.1363730391.squirrel@linux.intel.com>
Date: Tue, 19 Mar 2013 14:59:51 -0700 (PDT)
From: kevin.strasser@linux.intel.com
To: "Christopher Larson" <kergoth@gmail.com>
User-Agent: SquirrelMail/1.4.8-5.el4.centos.8
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Cc: yocto@yoctoproject.org, Christopher Larson <chris_larson@mentor.com>
Subject: Re: [meta-meson][PATCH] layer.conf: avoid unnecessary early expansion with :=
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
X-List-Received-Date: Tue, 19 Mar 2013 21:59:58 -0000
Content-Type: text/plain;charset=iso-8859-1
Content-Transfer-Encoding: 8bit

> From: Christopher Larson <chris_larson@mentor.com>
>
> bitbake handles immediate expansions of LAYERDIR for us automatically.
>
> Signed-off-by: Christopher Larson <chris_larson@mentor.com>
> ---
>  conf/layer.conf | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 8bd75d8..f463203 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -1,10 +1,10 @@
>  # We have a conf and classes directory, add to BBPATH
> -BBPATH := "${LAYERDIR}:${BBPATH}"
> +BBPATH =. "${LAYERDIR}:"
>
>  # We have a packages directory, add to BBFILES
> -BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb
> ${LAYERDIR}/recipes-*/*/*.bbappend"
> +BBFILES += "${LAYERDIR}/recipes-*/*/*.bb
> ${LAYERDIR}/recipes-*/*/*.bbappend"
>
>  BBFILE_COLLECTIONS += "meta-meson"
> -BBFILE_PATTERN_meta-meson := "^${LAYERDIR}/"
> +BBFILE_PATTERN_meta-meson = "^${LAYERDIR}/"
>  BBFILE_PRIORITY_meta-meson = "8"

Merged this and the meta-meson-bsp version, thank you.

-Kevin

