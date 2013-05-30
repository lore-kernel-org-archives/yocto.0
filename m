Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BE34E01439
	for <yocto@yoctoproject.org>; Thu, 30 May 2013 02:03:55 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 30 May 2013 02:03:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,769,1363158000"; d="scan'208";a="342432477"
Received: from unknown (HELO helios.localnet) ([10.252.121.217])
	by fmsmga001.fm.intel.com with ESMTP; 30 May 2013 02:04:06 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Thu, 30 May 2013 10:03:52 +0100
Message-ID: <3685099.fniMcpLHSL@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-22-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <51A6C870.8030404@windriver.com>
References: <CAJqtCyZR0+LAyymBB7Nv28Cv+m9gQnaVqNYFFbxvh5qvovJXcA@mail.gmail.com>
	<CAJqtCybqZHCvuvXNVdnOGS6_oxKBHYJcj1OhrVoMiM6Q1Qv60Q@mail.gmail.com>
	<51A6C870.8030404@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Problem to compile kernel (enable nfsd)
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
X-List-Received-Date: Thu, 30 May 2013 09:03:55 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 29 May 2013 23:33:04 Bruce Ashfield wrote:
> On 13-05-29 3:05 PM, Caio wrote:
> > bitbake -e -c kernel_configme linux-yocto-custom | grep KERNEL_FEATURES
> > # $KERNEL_FEATURES [2 operations]
> > KERNEL_FEATURES="features/nfsd/nfsd-enable.scc"
> 
> Aha. That's the problem with cutting and pasting patches, I missed this
> part of the fix:
> 
> diff --git a/meta/conf/machine/include/qemu.inc
> b/meta/conf/machine/include/qemu.inc
> index 7111926..b303191 100644
> --- a/meta/conf/machine/include/qemu.inc
> +++ b/meta/conf/machine/include/qemu.inc
> @@ -25,4 +25,4 @@ PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>   EXTRA_IMAGEDEPENDS += "qemu-native qemu-helper-native"
> 
>   # Provide the nfs server kernel module for all qemu images
> -KERNEL_FEATURES_append = " features/nfsd/nfsd-enable.scc"
> +KERNEL_FEATURES-pn_linux-yocto_append = " features/nfsd/nfsd-enable.scc"

I'm afraid this is not correct either.

You need pn- instead of pn_, and I think in terms of ordering you also need 
_append_pn-linux-yocto instead of _pn-linux-yocto_append.

I'd really appreciate the final fix for this as soon as possible so I can 
integrate it into the dylan branch for the 1.4.1 release.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

