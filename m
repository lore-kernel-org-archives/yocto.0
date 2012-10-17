Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DED8E0045D
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 14:23:14 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Oct 2012 14:23:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,602,1344236400"; d="scan'208";a="207356714"
Received: from unknown (HELO [10.255.14.120]) ([10.255.14.120])
	by orsmga001.jf.intel.com with ESMTP; 17 Oct 2012 14:23:08 -0700
Message-ID: <1350508988.5587.15.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Ross Burton <ross.burton@intel.com>
Date: Wed, 17 Oct 2012 16:23:08 -0500
In-Reply-To: <1350404011-18683-1-git-send-email-ross.burton@intel.com>
References: <1350404011-18683-1-git-send-email-ross.burton@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] cedartrail: add missing gst-va-intel-vaapi machine feature"
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
X-List-Received-Date: Wed, 17 Oct 2012 21:23:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Does this supercede the one in the 'Cedar Trail and gst-vaapi fixes'
patchset?

Also, do you have a branch we can pull from?

Tom

On Tue, 2012-10-16 at 17:13 +0100, Ross Burton wrote:
> There needs to be a gst-va-* MACHINE_FEATURE to get the right VA elements in the
> images.
> 
> Signed-off-by: Ross Burton <ross.burton@intel.com>
> ---
>  meta-cedartrail/conf/machine/cedartrail.conf |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail/conf/machine/cedartrail.conf
> index 33af012..540771d 100644
> --- a/meta-cedartrail/conf/machine/cedartrail.conf
> +++ b/meta-cedartrail/conf/machine/cedartrail.conf
> @@ -7,7 +7,7 @@
>  require conf/machine/include/tune-atom.inc
>  require conf/machine/include/ia32-base.inc
>  
> -MACHINE_FEATURES += "pcbios efi"
> +MACHINE_FEATURES += "pcbios efi gst-va-video-vaapi"
>  
>  XSERVER ?= "${XSERVER_IA32_BASE} \
>             ${XSERVER_IA32_EXT} \



