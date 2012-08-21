Return-Path: <darren.hart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F52AE0027F
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 09:38:52 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Aug 2012 09:33:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,802,1336374000"; d="scan'208";a="183537216"
Received: from unknown (HELO envy.home) ([10.255.13.36])
	by orsmga001.jf.intel.com with ESMTP; 21 Aug 2012 09:33:10 -0700
Message-ID: <5033B7CD.7070302@intel.com>
Date: Tue, 21 Aug 2012 09:31:09 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <1345533233.3907.42.camel@ted>
In-Reply-To: <1345533233.3907.42.camel@ted>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: ia32-base.inc: Drop glibc --with-tls option, its now the only option for glibc
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
X-List-Received-Date: Tue, 21 Aug 2012 16:38:52 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 08/21/2012 12:13 AM, Richard Purdie wrote:
> This option is unused by (e)glibc since 2011 and is the default. It has been
> shown to interact badly with the configure option in atom-pc from meta-yocto 
> causing a rebuild of the whole system despite the only change being an 
> assignment with += vs =. The easiest fix is simply to drop it.
>     
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Seems clearly correct.

Acked-by: Darren Hart <dvhart@linux.intel.com>



> 
> diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
> index 99ac352..17ff714 100644
> --- a/conf/machine/include/ia32-base.inc
> +++ b/conf/machine/include/ia32-base.inc
> @@ -21,7 +21,6 @@ SERIAL_CONSOLE ?= "115200 ttyS0"
>  # glibc-related variables
>  #
>  GLIBC_ADDONS ?= "nptl"
> -GLIBC_EXTRA_OECONF += "--with-tls"
>  
>  #
>  # kernel-related variables
> 
> 


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

