Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13B49E014D1
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2013 06:22:02 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 23 Apr 2013 06:22:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,533,1363158000"; d="scan'208";a="322986067"
Received: from unknown (HELO [10.255.14.66]) ([10.255.14.66])
	by orsmga002.jf.intel.com with ESMTP; 23 Apr 2013 06:22:01 -0700
Message-ID: <1366723320.1627.11.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Tue, 23 Apr 2013 08:22:00 -0500
In-Reply-To: <1366720007.23738.57.camel@ted>
References: <1366720007.23738.57.camel@ted>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [PATCH] meta-jasperforest: Fix BBFILES
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
X-List-Received-Date: Tue, 23 Apr 2013 13:22:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2013-04-23 at 13:26 +0100, Richard Purdie wrote:
> BBFILES is whitespace delimited. If .= used, no whitespace padding is added around
> the addition and this can lead to it being combined with some other part of the
> field, leading to parts of BBFILES mysteriously not being seen.
> 
> For example, I have in my bblayers.conf:
> 
>   /media/build1/poky/meta-intel/meta-emenlow \
>   /media/build1/poky/meta-intel/meta-fri2 \
>   /media/build1/poky/meta-intel/meta-jasperforest \
>   /media/build1/poky/meta-intel/meta-n450 \
>   /media/build1/poky/meta-intel/meta-romley \
> 
> and this results in the warning:
> 
> WARNING: No bb files matched BBFILE_PATTERN_fri2 '^/media/build1/poky/meta-intel/meta-fri2/'
> 
> and if I try to build MACHINE=fri2, I get strange errors due to the .bb files
> not being parsed.
> 
> The fix is simply to use +=, just like every other layer.conf file.
> 

Good catch, thanks!

Pulled into meta-intel/master and meta-intel/dylan.

Tom

> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  meta-jasperforest/conf/layer.conf |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-jasperforest/conf/layer.conf b/meta-jasperforest/conf/layer.conf
> index b539733..6d096e7 100644
> --- a/meta-jasperforest/conf/layer.conf
> +++ b/meta-jasperforest/conf/layer.conf
> @@ -2,7 +2,7 @@
>  BBPATH .= ":${LAYERDIR}"
>  
>  # We have a recipes directory, add to BBFILES
> -BBFILES .= "${LAYERDIR}/recipes-*/*/*.bb \
> +BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
>  	${LAYERDIR}/recipes-*/*/*.bbappend"
>  
>  BBFILE_COLLECTIONS += "jasperforest"
> 
> 



