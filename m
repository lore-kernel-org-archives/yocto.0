Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4874E00797
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2013 05:17:24 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 28 Nov 2013 05:17:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,791,1378882800"; d="scan'208";a="416501430"
Received: from unknown (HELO helios.localnet) ([10.252.122.17])
	by orsmga001.jf.intel.com with ESMTP; 28 Nov 2013 05:17:18 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Thornburg, Christopher A" <christopher.a.thornburg@intel.com>
Date: Thu, 28 Nov 2013 13:17:17 +0000
Message-ID: <16697287.VBkEKFbcaF@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <752F65977A748344A01D69BF22DCDBAE4FDDDA9B@FMSMSX105.amr.corp.intel.com>
References: <752F65977A748344A01D69BF22DCDBAE4FDDDA9B@FMSMSX105.amr.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to use pre-built external Yocto toolchain
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
X-List-Received-Date: Thu, 28 Nov 2013 13:17:27 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Christopher,

On Wednesday 27 November 2013 23:02:43 Thornburg, Christopher A wrote:
> I must be missing something obvious. It's easy for me to build and install a
> toolchain package using bitbake meta-toolchain
> The resulting toolchain package shows up at...
> ./tmp/deploy/sdk/poky-eglibc-i686-meta-toolchain-core2-toolchain-1.5.sh
> ...which is easy to install.
> 
> It seems the proper way to use such an external toolchain would be to set
> TCMODE, but TCMODE only seems to support 'default' (i.e. build an internal
> toolchain) and 'external-sourcery' (i.e. use an external sourcery
> toolchain). :S
> 
> How do I use an external toolchain built as above?

We don't support this; if you're going to use our toolchain it's expected that 
you let the build system take care of building it. If what you want is to 
accelerate repeat builds or builds of the same source on different machines, 
the solution for that is to use shared state (using SSTATE_MIRRORS to share 
between different build machines, if needed).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

