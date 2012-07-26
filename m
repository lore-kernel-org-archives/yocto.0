Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37940E002AA
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2012 13:27:48 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 26 Jul 2012 13:27:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="171901601"
Received: from envy.jf.intel.com (HELO envy.home) ([10.24.1.97])
	by orsmga001.jf.intel.com with ESMTP; 26 Jul 2012 13:27:47 -0700
Message-ID: <5011A7DE.4010007@linux.intel.com>
Date: Thu, 26 Jul 2012 13:26:06 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <1343201478-14259-1-git-send-email-raj.khem@gmail.com>
In-Reply-To: <1343201478-14259-1-git-send-email-raj.khem@gmail.com>
X-Enigmail-Version: 1.4.3
Cc: yocto@yoctoproject.org
Subject: Re: [meta-intel][PATCH] gnu-efi_3.0m.bb: Fix tabs with spaces in python snippet
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
X-List-Received-Date: Thu, 26 Jul 2012 20:27:48 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 07/25/2012 12:31 AM, Khem Raj wrote:
> This shuts up new bitbake otherwise it warns about this
> always
> 
> Signed-off-by: Khem Raj <raj.khem@gmail.com>

Agreed, there is another series pending with this same change. Will get
this merged soon.

Thanks,

Darren

> ---
>  common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb |   10 +++++-----
>  1 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb b/common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb
> index 252d49a..a0d5823 100644
> --- a/common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb
> +++ b/common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb
> @@ -17,11 +17,11 @@ SRC_URI[md5sum] = "d0a21125aee56c0c7291ad260e916cb3"
>  S = "${WORKDIR}/gnu-efi-3.0"
>  
>  def gnu_efi_arch(d):
> -	import re
> -	tarch = d.getVar("TARGET_ARCH", True)
> -	if re.match("i[3456789]86", tarch):
> -		return "ia32"
> -	return tarch
> +    import re
> +    tarch = d.getVar("TARGET_ARCH", True)
> +    if re.match("i[3456789]86", tarch):
> +        return "ia32"
> +    return tarch
>  
>  EXTRA_OEMAKE = "'ARCH=${@gnu_efi_arch(d)}' 'CC=${CC}' 'AS=${AS}' 'LD=${LD}' 'AR=${AR}' \
>                  'RANLIB=${RANLIB}' 'OBJCOPY=${OBJCOPY}' \
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

