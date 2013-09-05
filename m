Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ECF6E01415
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 03:40:15 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Sep 2013 03:40:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,846,1371106800"; d="scan'208";a="397096607"
Received: from unknown (HELO helios.localnet) ([10.252.123.106])
	by fmsmga002.fm.intel.com with ESMTP; 05 Sep 2013 03:39:58 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: lothar@denx.de
Date: Thu, 05 Sep 2013 11:39:57 +0100
Message-ID: <3128287.s7bpGpUtCd@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-29-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <b9f5b1f042ece4ed9e9d70b71e919fcd@denx.de>
References: <b9f5b1f042ece4ed9e9d70b71e919fcd@denx.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: SRC_URI_kernel in machine conf
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
X-List-Received-Date: Thu, 05 Sep 2013 10:40:17 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Lothar,

On Thursday 05 September 2013 12:09:57 lothar@denx.de wrote:
> Is it possible to declare a kernels' SRC_URI, as also certain functions,
> directly in the machine config, instead of the kernel .bb?
> 
> Example: currently I declare the following in a mykernel.bb (derrived
> from kernel.bbclass)
>      SRC_URI_mymachine = "git:my-git-repo"
>      do_compile_append_mymachine(){
>          rm somefile
>      }
> 
> ...is it possible now, to move this specific code into the
> mymachine.conf file, like
>      SRC_URI_mykernel = "git:my-git-repo"
>      do_compile_mykernel_append(){
>          rm somefile
>      }
> 
> Questions:
> 1) Is this possible at all?

I don't think this will work; and even if it does it is not advisable. You 
should do one of two things instead:

A) Make the switch within the kernel recipe using machine overrides (this is 
often done with linux-yocto)

B) Have a different recipe for each kernel and select the appropriate one with 
PREFERRED_PROVIDER_virtual/kernel in the machine configuration

> 2) Is it better to use suffix "_mykernel", "_kernel" or
> "_virtual/kernel"?

I don't think any of these will work in this instance.

> 3) I saw settings sometimes using the suffix "_kernelname" e.g.
> "_linux-yocto" and other times "_virtual/kernel" - what are the
> differences between them? When better use one, when better use the
> other?

"virtual/kernel" or "linux-yocto" (or any recipe name) as an override will 
only work with certain variables, e.g. PREFERRED_VERSION or PREFERRED_PROVIDER 
at the global level. Elsewhere it will not work. If you run bitbake -e | less 
and search for ^OVERRIDES= you will see the overrides that generally work for 
all variables based on your current configuration, as well as how the overrides 
are set up based on the values of other variables such as DISTRO, MACHINE, PN 
etc.

Cheers,
Paul


-- 

Paul Eggleton
Intel Open Source Technology Centre

