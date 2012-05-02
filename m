Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0D6FE00723
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 18:17:22 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 May 2012 18:17:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="137690250"
Received: from unknown (HELO [10.255.12.170]) ([10.255.12.170])
	by azsmga001.ch.intel.com with ESMTP; 01 May 2012 18:17:21 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <109042442154af56194cfdb833df312254b36852.1335909082.git.dvhart@linux.intel.com>
References: <cover.1335909082.git.dvhart@linux.intel.com>
	<109042442154af56194cfdb833df312254b36852.1335909082.git.dvhart@linux.intel.com>
Date: Tue, 01 May 2012 20:17:22 -0500
Message-ID: <1335921442.27056.193.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 6/7] ia32-base.inc: Use a weak default assignment for kernel provider and version
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
X-List-Received-Date: Wed, 02 May 2012 01:17:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-05-01 at 15:12 -0700, Darren Hart wrote:
> Using the default assignment operator (?=) requires the including recipes
> to ensure to assign the Linux kernel provider and version prior to including
> ia32-base.inc. By use the weak default assignment operator (??=), the assignment
> can come after the inclusion, which avoids confusion and can lead to a more
> natural recipe structure.
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>

Acked-by: Tom Zanussi <tom.zanussi@intel.com>

> ---
>  conf/machine/include/ia32-base.inc |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
> index 874e258..be1c8e0 100644
> --- a/conf/machine/include/ia32-base.inc
> +++ b/conf/machine/include/ia32-base.inc
> @@ -26,8 +26,8 @@ GLIBC_EXTRA_OECONF += "--with-tls"
>  #
>  # kernel-related variables
>  #
> -PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> -PREFERRED_VERSION_linux-yocto ?= "3.0%"
> +PREFERRED_PROVIDER_virtual/kernel ??= "linux-yocto"
> +PREFERRED_VERSION_linux-yocto ??= "3.0%"
>  
>  #
>  # XSERVER subcomponents, used to build the XSERVER variable



