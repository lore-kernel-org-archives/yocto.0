Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EDC5E013EF
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2012 07:39:12 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 26 Sep 2012 07:39:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,490,1344236400"; d="scan'208";a="149365763"
Received: from unknown (HELO helios.localnet) ([10.252.122.36])
	by AZSMGA002.ch.intel.com with ESMTP; 26 Sep 2012 07:39:11 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Wolfgang Denk <wd@denx.de>
Date: Wed, 26 Sep 2012 15:39:10 +0100
Message-ID: <224780988.1nyHnvScgz@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.1 (Linux/3.2.0-31-generic-pae; KDE/4.9.1; i686; ; )
In-Reply-To: <20120926142045.901EB2031A9@gemini.denx.de>
References: <CAPhnLPCYC9_xvdinu9=prhUOz8FfquYK5TVrBKiHLZ4FyK267g@mail.gmail.com>
	<2428256.OTjtN2nWn5@helios>
	<20120926142045.901EB2031A9@gemini.denx.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: 1.3_M5.rc2 status.
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
X-List-Received-Date: Wed, 26 Sep 2012 14:39:12 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 26 September 2012 16:20:45 Wolfgang Denk wrote:
> Dear Paul Eggleton,
> In message <2428256.OTjtN2nWn5@helios> you wrote:
> > > Ah, OK.  Well, I decided to update meta/conf/sanity.conf to have a
> > > matching value of LAYER_CONF_VERSION, so this is solved.
> > 
> > That will work, but normally you would edit conf/bblayers.conf, since
> > meta/conf/sanity.conf is part of the metadata.
> 
> Well, what is the rationale for setting LAYER_CONF_VERSION=6 in
> meta-yocto/conf/distro/poky.conf, then?

The rationale is for this specific increase is this: if you previously had 
meta-yocto in your existing bblayers.conf, since the reference BSP parts of 
meta-yocto were split out into meta-yocto-bsp for the upcoming release, you 
now need to add that layer to get the same functionality back. So we use this 
mechanism to get users to do that.
 
> If meta layer specific values of LAYER_CONF_VERSION are allowed, the
> sanity checker needs a better way to deal with these; alternatively,
> above setting in meta-yocto/conf/distro/poky.conf is wrong.  So either
> of these should be fixed.

By "better way to deal with these", what would you suggest? I don't see any 
alternative that avoids the BSP components just disappearing for users who 
have existing configurations.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

