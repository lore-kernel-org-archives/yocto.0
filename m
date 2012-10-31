Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 582E0E006C1
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 14:00:58 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 31 Oct 2012 14:00:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,688,1344236400"; d="scan'208";a="211926777"
Received: from unknown (HELO [10.255.14.154]) ([10.255.14.154])
	by azsmga001.ch.intel.com with ESMTP; 31 Oct 2012 14:00:56 -0700
Message-ID: <1351717255.1762.40.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Ross Burton <ross.burton@intel.com>
Date: Wed, 31 Oct 2012 16:00:55 -0500
In-Reply-To: <1351158904-5759-1-git-send-email-ross.burton@intel.com>
References: <1351158904-5759-1-git-send-email-ross.burton@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] gnu-efi: add missing sha256 checksum
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
X-List-Received-Date: Wed, 31 Oct 2012 21:00:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-10-25 at 10:55 +0100, Ross Burton wrote:
> Signed-off-by: Ross Burton <ross.burton@intel.com>

Pulled into meta-intel/master.

Tom

> ---
>  common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb |    1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb b/common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb
> index a0d5823..f8015f2 100644
> --- a/common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb
> +++ b/common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb
> @@ -13,6 +13,7 @@ SRC_URI = "http://downloads.sourceforge.net/gnu-efi/gnu-efi_3.0m.orig.tar.gz \
>  	   file://parallel-make.patch \
>            "
>  SRC_URI[md5sum] = "d0a21125aee56c0c7291ad260e916cb3"
> +SRC_URI[sha256sum] = "b7fb638f5ec8faa6edebe54beb90957f01ccccf70a2a948d1b58b834c8d7f86d"
>  
>  S = "${WORKDIR}/gnu-efi-3.0"
>  



