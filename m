Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EAE9E013B7
	for <yocto@yoctoproject.org>; Fri, 18 May 2012 07:05:15 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 18 May 2012 07:05:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="101632381"
Received: from unknown (HELO [10.255.13.139]) ([10.255.13.139])
	by AZSMGA002.ch.intel.com with ESMTP; 18 May 2012 07:05:14 -0700
Message-ID: <4FB65719.6020108@linux.intel.com>
Date: Fri, 18 May 2012 17:05:13 +0300
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "Lindner, MihaiX" <mihaix.lindner@intel.com>
References: <21729860C46EDA49977430884362682519374706@IRSMSX102.ger.corp.intel.com>
In-Reply-To: <21729860C46EDA49977430884362682519374706@IRSMSX102.ger.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] xf86-video-intel version bump 2.18 to 2.19
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
X-List-Received-Date: Fri, 18 May 2012 14:05:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/18/2012 03:29 PM, Lindner, MihaiX wrote:
>> From 10f08b73afb0c60b81b29f626cd38c171eb0c427 Mon Sep 17 00:00:00 2001
> From: mihai lindner<mihaix.lindner@intel.com>
>
Is this patch from format-patch?

Also, this should be posted to the 
openembedded-core@lists.openembedded.org mailing list


> ---
>   .../{xf86-video-intel_2.18.0.bb =>  xf86-video-intel_2.19.0.bb}   |    6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
>   rename meta/recipes-graphics/xorg-driver/{xf86-video-intel_2.18.0.bb =>  xf86-video-intel_2.19.0.bb} (82%)
>
> diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.18.0.bb b/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.19.0.bb
> similarity index 82%
> rename from meta/recipes-graphics/xorg-driver/xf86-video-intel_2.18.0.bb
> rename to meta/recipes-graphics/xorg-driver/xf86-video-intel_2.19.0.bb
> index 637e11c..e9e43ff 100644
> --- a/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.18.0.bb
> +++ b/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.19.0.bb
> @@ -9,7 +9,7 @@ Infrastructure (DRI)."
>
>   LIC_FILES_CHKSUM = "file://COPYING;md5=8730ad58d11c7bbad9a7066d69f7808e"
>
> -PR = "${INC_PR}.0"
> +PR = "${INC_PR}.1"
>
You do not have to bump PR for a upgrade, infact, is should either 
remain at 0 or be reset to 0 (or .0) as appropriate.

>   DEPENDS += "virtual/libx11 libxvmc drm xf86driproto glproto \
>              virtual/libgl xineramaproto xf86driproto libpciaccess"
> @@ -22,5 +22,5 @@ EXTRA_OECONF += '${@base_conditional( "ROOTLESS_X", "1", " --enable-kms-only", "
>
>   COMPATIBLE_HOST = '(i.86|x86_64).*-linux'
>
> -SRC_URI[md5sum] = "34f3987ffe86e30c57abc33b7f8030e9"
> -SRC_URI[sha256sum] = "dce63e33ccfada39ef1e1e6768dfd8edd4c525670dfe56d1c42b2f9570039ffc"
> +SRC_URI[md5sum] = "f397bddfc88d4c9b30b56526c1e02e8e"
> +SRC_URI[sha256sum] = "32133d61b14ce3b45b83a60e4ed8eb75159259d708f056144250aaeabf16e4bc"
> --
> 1.7.10
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

