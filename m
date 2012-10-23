Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56A04E00292
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 08:53:00 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Oct 2012 08:52:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,635,1344236400"; d="scan'208";a="231177113"
Received: from unknown (HELO [10.255.14.179]) ([10.255.14.179])
	by orsmga002.jf.intel.com with ESMTP; 23 Oct 2012 08:52:57 -0700
Message-ID: <1351007577.12186.32.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Ross Burton <ross.burton@intel.com>
Date: Tue, 23 Oct 2012 10:52:57 -0500
In-Reply-To: <1350985411-20099-1-git-send-email-ross.burton@intel.com>
References: <1350985411-20099-1-git-send-email-ross.burton@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] gstreamer-vaapi: add missing build dependencies
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
X-List-Received-Date: Tue, 23 Oct 2012 15:53:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-10-23 at 10:43 +0100, Ross Burton wrote:
> [YOCTO #3321]
> 

Fixed the problem for me here (sugarbay), thanks.

Pulled into meta-intel/master.

Tom

> Signed-off-by: Ross Burton <ross.burton@intel.com>
> ---
>  common/recipes-multimedia/gstreamer/gstreamer-vaapi_git.bb |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/common/recipes-multimedia/gstreamer/gstreamer-vaapi_git.bb b/common/recipes-multimedia/gstreamer/gstreamer-vaapi_git.bb
> index 27552a2..74fa29a 100644
> --- a/common/recipes-multimedia/gstreamer/gstreamer-vaapi_git.bb
> +++ b/common/recipes-multimedia/gstreamer/gstreamer-vaapi_git.bb
> @@ -6,7 +6,7 @@ based plugins for GStreamer and helper libraries: `vaapidecode', \
>  LICENSE = "LGPLv2.1+"
>  LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=4fbd65380cdd255951079008b364516c"
>  
> -DEPENDS = "gstreamer libva"
> +DEPENDS = "gstreamer gst-plugins-base gst-plugins-bad libva"
>  
>  # 0.3.8 tag
>  SRCREV = "6ec4c2252a4aa706cd8631cb1083828485b9df9a"



