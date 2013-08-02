Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52B88E013EC
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2013 08:01:27 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 02 Aug 2013 08:01:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,802,1367996400"; d="scan'208";a="380827521"
Received: from unknown (HELO helios.localnet) ([10.252.122.201])
	by orsmga002.jf.intel.com with ESMTP; 02 Aug 2013 08:01:21 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Wolfgang Denk <wd@denx.de>
Date: Fri, 02 Aug 2013 16:01:19 +0100
Message-ID: <2678601.4p0jHcujVX@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <20130802133650.C2420380BF8@gemini.denx.de>
References: <20130802133650.C2420380BF8@gemini.denx.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Unhandled dependency checking
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
X-List-Received-Date: Fri, 02 Aug 2013 15:01:30 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Wolfgang,

On Friday 02 August 2013 15:36:50 Wolfgang Denk wrote:
> I'm looking ofr a good way to deal with some build breakages caused by
> missing dependency checking.
>
> The problem: some packages require certain capabilities, without
> checking for these, and actually I can;t see a good way how to
> implement such checking.
> 
> For example, the "lttng" package requires module support.  But when
> you modify the defconfig for the Linux kernel and disable module
> support there, then the build for "lttng" will break.

It's true that specifically for the kernel we have no intrinsic way of 
verifying from the recipe that appropriate kernel functionality is enabled. It 
probably wouldn't be too hard to add a mechanism that looked at 
${STAGING_KERNEL_DIR}/.config for specific values; in fact I notice that the 
systemtap-uprobes recipe does this. However this is only really appropriate 
for recipes that are specific to the machine and that have virtual/kernel in 
DEPENDS.

> Is there some good way to handle or at least to test for such "hidden"
> dependencies on features provided by other packages, so we could at
> least issue more useful error messages to the end user?

So in the general case, not really; usually there is no way to introspect 
these dependencies if they have not been explicitly declared. We do now 
however have a script that can be used to find undeclared dependencies 
(scripts/test-dependencies.sh), but the way this operates is to run several 
builds and it does take quite a bit of time.

I've thought about the possibility of doing a comparison of runtime 
dependencies after packaging and DEPENDS as a QA check to see if anything was 
missing; I don't know how practical this would be however.

Also, over the years there has also been discussion about using per-recipe 
sysroots, so that the sysroot used by an individual recipe only ever contains 
what has been declared in DEPENDS and thus wouldn't be able to auto-detect 
anything else. Of course this would significantly increase both build system 
complexity and disk space requirements.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

