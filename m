Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D634E00348
	for <yocto@yoctoproject.org>; Tue,  6 Nov 2012 15:20:41 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 06 Nov 2012 15:20:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,724,1344236400"; d="scan'208";a="165269845"
Received: from unknown (HELO [10.255.15.17]) ([10.255.15.17])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Nov 2012 15:20:39 -0800
Message-ID: <1352244039.2408.62.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Ross Burton <ross.burton@intel.com>
Date: Tue, 06 Nov 2012 17:20:39 -0600
In-Reply-To: <1352118670-25336-1-git-send-email-ross.burton@intel.com>
References: <1352118670-25336-1-git-send-email-ross.burton@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH meta-intel] meta-cedartrail: really fix mesa-dri version (typo'd)
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
X-List-Received-Date: Tue, 06 Nov 2012 23:20:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-11-05 at 12:31 +0000, Ross Burton wrote:
> Signed-off-by: Ross Burton <ross.burton@intel.com>

Pulled into meta-intel/danny-next and meta-intel/master.

Thanks,

Tom

> ---
>  meta-cedartrail/conf/machine/cedartrail.conf |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail/conf/machine/cedartrail.conf
> index aa2a46a..a5fa0f0 100644
> --- a/meta-cedartrail/conf/machine/cedartrail.conf
> +++ b/meta-cedartrail/conf/machine/cedartrail.conf
> @@ -17,7 +17,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
>             "
>  PREFERRED_VERSION_linux-yocto ?= "3.0%"
>  PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
> -PREFERRED_VERSION_mesa-dri ?= "8.04"
> +PREFERRED_VERSION_mesa-dri ?= "8.0.4"
>  PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
>  
>  SYSLINUX_OPTS = "serial 0 115200"



