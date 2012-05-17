Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61632E01402
	for <yocto@yoctoproject.org>; Thu, 17 May 2012 13:27:54 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 May 2012 13:27:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="145287293"
Received: from unknown (HELO helios.localnet) ([10.252.120.128])
	by orsmga002.jf.intel.com with ESMTP; 17 May 2012 13:27:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Chris Tapp <opensource@keylevel.com>
Date: Thu, 17 May 2012 21:27:52 +0100
Message-ID: <4904220.mFpDsjEpuq@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.2 (Linux/3.2.0-24-generic-pae; KDE/4.8.2; i686; ; )
In-Reply-To: <0A3A31D3-D0DF-4C56-8896-1075F801C8BD@keylevel.com>
References: <0A3A31D3-D0DF-4C56-8896-1075F801C8BD@keylevel.com>
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
X-List-Received-Date: Thu, 17 May 2012 20:27:54 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 17 May 2012 21:10:10 Chris Tapp wrote:
> Is it possible to have the (R)DEPENDS list vary depending on the machine
> being built?
> 
> For example, I want 'this-bit' to be included for a 'machine-1' build, but
> not 'machine-2'.
> 
> Something like:
> 
> DEPENDS = "common-stuff"
> 
> DEPENDS_machine-1 = "${DEPENDS} this-stuff"

Yes, that will work. If the DEPENDS change implies some different configuration 
I'd recommend being explicit about it as well e.g. via EXTRA_OECONF or 
whatever is appropriate; this is particularly important for the case where the 
extra dependency is not included and the configure script for the application 
would auto-detect the presence of the additional dependency in the absence of 
an explicit configure option.

Also, ideally these machine-specific bits should live in a bbappend within the 
BSP for that machine, thus keeping the recipe itself more or less generic.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

