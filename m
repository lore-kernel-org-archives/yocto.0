Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2958E0027E
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 14:17:19 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 30 Oct 2012 14:17:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,682,1344236400"; d="scan'208";a="162577473"
Received: from unknown (HELO [10.255.14.154]) ([10.255.14.154])
	by AZSMGA002.ch.intel.com with ESMTP; 30 Oct 2012 14:17:18 -0700
Message-ID: <1351631837.1762.6.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Ross Burton <ross.burton@intel.com>
Date: Tue, 30 Oct 2012 16:17:17 -0500
In-Reply-To: <1351613233-2977-1-git-send-email-ross.burton@intel.com>
References: <1351613233-2977-1-git-send-email-ross.burton@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] meta-cedartrail: bump mesa-dri preferred version to 8.04
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
X-List-Received-Date: Tue, 30 Oct 2012 21:17:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-10-30 at 16:07 +0000, Ross Burton wrote:
> There isn't a 7.11 anywhere for it to build, so use 8.04.
> 
> Signed-off-by: Ross Burton <ross.burton@intel.com>

Pulled into meta-intel/master.

Thanks,

Tom

> ---
>  meta-cedartrail/conf/machine/cedartrail.conf |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail/conf/machine/cedartrail.conf
> index 7efe584..aa2a46a 100644
> --- a/meta-cedartrail/conf/machine/cedartrail.conf
> +++ b/meta-cedartrail/conf/machine/cedartrail.conf
> @@ -17,7 +17,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
>             "
>  PREFERRED_VERSION_linux-yocto ?= "3.0%"
>  PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
> -PREFERRED_VERSION_mesa-dri ?= "7.11"
> +PREFERRED_VERSION_mesa-dri ?= "8.04"
>  PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
>  
>  SYSLINUX_OPTS = "serial 0 115200"



