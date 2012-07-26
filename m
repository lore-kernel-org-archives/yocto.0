Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BA3CE002AA
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2012 13:23:45 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 26 Jul 2012 13:23:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="171899867"
Received: from envy.jf.intel.com (HELO envy.home) ([10.24.1.97])
	by orsmga001.jf.intel.com with ESMTP; 26 Jul 2012 13:23:41 -0700
Message-ID: <5011A6E8.4010304@linux.intel.com>
Date: Thu, 26 Jul 2012 13:22:00 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: nitin.a.kamble@intel.com
References: <c24a8e51027f36cb1c0395ca0c90cbd54b685100.1343037893.git.nitin.a.kamble@intel.com>
	<74eabb03f090212912975b113d22a0e89a009f74.1343037893.git.nitin.a.kamble@intel.com>
In-Reply-To: <74eabb03f090212912975b113d22a0e89a009f74.1343037893.git.nitin.a.kamble@intel.com>
X-Enigmail-Version: 1.4.3
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 6/6] gnu-efi: fix whitespace usage
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
X-List-Received-Date: Thu, 26 Jul 2012 20:23:45 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 07/23/2012 03:06 AM, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> the use of tabs was causing bitbake warnings. TO avoid these warnings

  The                                           To                     ,

> converted tags into space which is also the recommended indenting for

  convert tabs        spaces

> python code.


Thanks for catching that!

--
Darren

> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
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

