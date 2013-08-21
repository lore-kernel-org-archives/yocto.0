Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F3D9E00406
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 07:26:17 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 Aug 2013 07:26:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,928,1367996400"; d="scan'208";a="389784735"
Received: from timevans-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.122.252])
	by fmsmga002.fm.intel.com with ESMTP; 21 Aug 2013 07:26:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brad Litterell <bradl@taser.com>
Date: Wed, 21 Aug 2013 15:26:08 +0100
Message-ID: <11108180.KlZSWrBJZD@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <2C678312-32B2-4184-9839-73D77D06525A@taser.com>
References: <66996BFE-C7A8-4986-9D47-B1EF6827AD1A@taser.com>
	<7610515.7dZZ0L6LcG@helios>
	<2C678312-32B2-4184-9839-73D77D06525A@taser.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: What are _virtual providers? and other Suffixes?
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
X-List-Received-Date: Wed, 21 Aug 2013 14:26:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Brad,

On Tuesday 20 August 2013 23:42:36 Brad Litterell wrote:
> Thanks - that makes it clearer.  But now I have one other question to ask:
> 
> if  virtual/xyz is added to overrides when the item is dealt with, then in
> that case P_P_virtual/xyz_am335 has two overrides hanging off of the base
> variable PREFERRED_PROVIDER.
> 
> You also said earlier that the latest override applies, so is there some
> rule for multiple conditionals on a variable?

Yes, effectively all must be in OVERRIDES for the assignment statement to take 
effect.
 
> E.g. What happens in a case like the following?
> 
> OVERRIDES="foo1:bar2:car3"
> 
> VARIABLE_foo1_bar2 = "both"
> VARIABLE_car3 = "last one"
> 
> what does VARIABLE wind up?  The first is "more specific" in that it matches
> two values in overrides, whereas car is last, but less specific.

I would have thought that the value would have been "last one" however 
experimentation shows that "both" is what you actually get. I'm not exactly 
sure why. In practice I don't think we hit this kind of situation too often 
though, i.e. a mix of double and single overrides where the single override 
needs to take precedence.
 
Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

