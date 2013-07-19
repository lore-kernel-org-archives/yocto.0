Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EF42E01492
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 03:20:31 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 19 Jul 2013 03:20:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,700,1367996400"; d="scan'208";a="333792084"
Received: from unknown (HELO helios.localnet) ([10.252.122.96])
	by azsmga001.ch.intel.com with ESMTP; 19 Jul 2013 03:20:29 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Fri, 19 Jul 2013 11:20:28 +0100
Message-ID: <1511282.kM2X9Mm5Th@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.4 (Linux/3.8.0-26-generic; KDE/4.10.4; i686; ; )
In-Reply-To: <CAPhnLPAGFX+SLWp8yFh8N=HpkpTxFZHAicr+kjFGp4D3is=EBQ@mail.gmail.com>
References: <cover.1373474163.git.stefanx.stanacar@intel.com>
	<1994317.voCf2gl0Ax@helios>
	<CAPhnLPAGFX+SLWp8yFh8N=HpkpTxFZHAicr+kjFGp4D3is=EBQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-autobuilder][PATCH 0/3] Enabling of the new testimage class for sanity tests
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
X-List-Received-Date: Fri, 19 Jul 2013 10:20:34 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 18 July 2013 08:32:11 Flanagan, Elizabeth wrote:
> On Thu, Jul 18, 2013 at 5:37 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
> > On Wednesday 17 July 2013 14:30:27 Flanagan, Elizabeth wrote:
> >> So, after the oe-core failure last night that was due to how we
> >> determine when to use the new testimage, this has kind of bumped up
> >> the need for the autobuilder to start using LAYERVERSION_* as a means
> >> of determinating major functionality changes.
> >> 
> >> In this example, we've essentially broken backwards compatibility for
> >> oe-core builds on the autobuilder. I put in a quick and dirty patch
> >> last night just to get it so oe-core sanity will run using the old
> >> sanity testing framework. I'm working on getting a GetLayerVersion
> >> buildstep working so we can utilize it both for the new test framework
> >> as well as to differentiate the toolchain image builds (prior to 2 we
> >> build meta-toolchain-gmae, post core-image-sato-sdk).
> > 
> > Wouldn't the simplest thing be to just check for the presence of
> > meta/classes/testimage.bbclass?
> 
> Actually, no. What I would need to do here in buildbot land is either
> script out the conditional in the bash that executes (ick, kind of a
> pain to debug) or make an entirely new buildstep to check for the
> existence of that one file, set a property and then check for that
> property in RunSanityTesting. And that's just for sanity testing. For
> meta-toolchain-gmae, I'd have to have yet another way of doing it.
> 
> It's so much easier to just have a GetLayerVersion step for each layer and
> then:
> 
> layerversion = self.getProperty("layerversion_core")
> if layerversion and int(layerversion) > 1:
>   #do one thing
> else:
>   #do something else.

OK, I can see that being easier assuming you can't just do the path check in 
the python code itself (and it's not clear to me if you have the path to the 
metadata or not at that point, based on the variable printout from a recent 
build). I'm still a little bit concerned about changing the meaning of 
LAYERVERSION, but I'm willing to admit defeat at this point in the absence of 
another acceptable solution.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

