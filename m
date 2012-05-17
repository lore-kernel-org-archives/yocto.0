Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71ED8E01421
	for <yocto@yoctoproject.org>; Thu, 17 May 2012 14:22:20 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 May 2012 14:22:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="144584650"
Received: from unknown (HELO helios.localnet) ([10.252.120.128])
	by azsmga001.ch.intel.com with ESMTP; 17 May 2012 14:22:19 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Chris Tapp <opensource@keylevel.com>
Date: Thu, 17 May 2012 22:22:18 +0100
Message-ID: <8363795.7bU7lvsc4a@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.2 (Linux/3.2.0-24-generic-pae; KDE/4.8.2; i686; ; )
In-Reply-To: <850EEF2D-6A67-4987-B202-A24461737544@keylevel.com>
References: <0A3A31D3-D0DF-4C56-8896-1075F801C8BD@keylevel.com>
	<4904220.mFpDsjEpuq@helios>
	<850EEF2D-6A67-4987-B202-A24461737544@keylevel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Per-machine DEPENDS
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
X-List-Received-Date: Thu, 17 May 2012 21:22:20 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 17 May 2012 22:07:50 Chris Tapp wrote:
> On 17 May 2012, at 21:27, Paul Eggleton wrote:
> > On Thursday 17 May 2012 21:10:10 Chris Tapp wrote:
> >> Is it possible to have the (R)DEPENDS list vary depending on the machine
> >> being built?
> >> 
> >> For example, I want 'this-bit' to be included for a 'machine-1' build,
> >> but
> >> not 'machine-2'.
> >> 
> >> Something like:
> >> 
> >> DEPENDS = "common-stuff"
> >> 
> >> DEPENDS_machine-1 = "${DEPENDS} this-stuff"
> > 
> > Yes, that will work. If the DEPENDS change implies some different
> > configuration I'd recommend being explicit about it as well e.g. via
> > EXTRA_OECONF or whatever is appropriate; this is particularly important
> > for the case where the extra dependency is not included and the configure
> > script for the application would auto-detect the presence of the
> > additional dependency in the absence of an explicit configure option.
> 
> Thanks. Is there some documentation that explains how the suffixes are build
> up, when they are used, etc. ?

These "suffixes" are called overrides in BitBake parlance. If an override 
appears in the OVERRIDES variable then it is applied, and the OVERRIDES 
variable is built up out of the values of various other variables (including 
MACHINE, DISTRO, etc - see 'bitbake -e | grep OVERRIDES'). I'm pretty sure 
this is covered in the BitBake manual, although unfortunately that is only 
available in source format right now.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

