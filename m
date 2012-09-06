Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8930E014F9
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 08:38:23 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 06 Sep 2012 08:38:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,380,1344236400"; d="scan'208";a="218918559"
Received: from unknown (HELO helios.localnet) ([10.252.121.173])
	by fmsmga001.fm.intel.com with ESMTP; 06 Sep 2012 08:38:22 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Thu, 06 Sep 2012 16:38:21 +0100
Message-ID: <1789113.10IpD71yH1@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-30-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <5048C246.4090807@mlbassoc.com>
References: <1CA12C40-FBBD-4CC7-B45A-5867AB64490A@gmail.com>
	<2515670.URCovxJbBq@helios> <5048C246.4090807@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Procedure to setup icecc for performing a distributed build
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
X-List-Received-Date: Thu, 06 Sep 2012 15:38:23 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 06 September 2012 09:33:26 Gary Thomas wrote:
> On 2012-09-06 09:29, Paul Eggleton wrote:
> > On Thursday 06 September 2012 19:23:53 Elvis Dowson wrote:
> >> Unfortunately no. I've got two machines, both with quad-core intel i7
> >> processors, but I just couldn't get icecc to work with yocto. I end up
> >> regularly perform fresh builds at least 5 to 6 times a day, and it takes
> >> me
> >> 2 hours to build core-image-minimal.
> > 
> > At its core, icecc.bbclass just sets things up so that icecc is called
> > instead of the normal compiler. It would be worth verifying that that is
> > actually taking effect by looking at the commands being used as reported
> > in log.do_configure for specific recipes.
> 
> Is this only for the host compiler or the target (cross) compilers as well?
> If it's only the host compiler being used for "native" builds, how much is
> there to be gained from distributing the work?

It covers all according to the comments at the top of the file.

I have to be honest and say I've never used icecc.bbclass; I've been told that 
the overhead mostly wipes out any advantage of individual compile jobs being 
farmed out to different machines, but I've never actually verified that first 
hand.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

