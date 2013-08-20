Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A6A4E00406
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 16:33:33 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Aug 2013 16:30:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,923,1367996400"; d="scan'208";a="365854410"
Received: from akagikob-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.122.209])
	by orsmga001.jf.intel.com with ESMTP; 20 Aug 2013 16:33:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brad Litterell <bradl@taser.com>
Date: Wed, 21 Aug 2013 00:33:22 +0100
Message-ID: <7610515.7dZZ0L6LcG@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <78289786-2223-441A-B086-7E71B1314168@taser.com>
References: <66996BFE-C7A8-4986-9D47-B1EF6827AD1A@taser.com>
	<2234378.IGkL2KjiRV@helios>
	<78289786-2223-441A-B086-7E71B1314168@taser.com>
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
X-List-Received-Date: Tue, 20 Aug 2013 23:33:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 20 August 2013 23:16:56 Brad Litterell wrote:
> Thanks for taking the time to explain, very enlightening.  I think I
> understood it, please allow me to play back my understanding:
> 
> 1.  _virtual is part of the variable name, and is not a special type of
> override. 

Actually, virtual/kernel is an override as well. The way a few variables, 
including PREFERRED_PROVIDER, are used is that OVERRIDES is set to include the 
item being dealt with when the variable is read, thus specifically with 
PREFERRED_PROVIDER you always override it with the name of the target you wish 
to select the provider for.

> 2.  PREFERRED_PROVIDER_virtual/kernel_am335x-evm breaks into:
> "PREFERRED_PROVIDER_virtual/kernel" with an override condition of 
> "am335x-evm"

Outside of the part of the code where it's actually read, yes. Within that 
code the override "virtual/kernel" will be applied when it's looking to see 
what the provider for "virtual/kernel" should be, and thus it will get the 
appropriate value for the PREFERRED_PROVIDER variable. So technically the 
variable is just PREFERRED_PROVIDER.

> 3. So for the jpeg case:
> >> PREFERRED_PROVIDER_jpeg = "libjpeg-turbo"
> >> 
> >> PREFERRED_PROVIDER_jpeg_armv5te = "jpeg"
> 
> Could this have also been _virtual/jpeg?  It's just that some components use
> the _virtual convention and others don't?

The prefix is virtual/ not _virtual, and as I mentioned earlier virtual/ is 
just a convention (although there are a few isolated parts of the code that 
specifically look for the virtual/ prefix). The mechanism will work in the same 
way here; recipes that need jpeg decoding have "jpeg" in DEPENDS and providing 
libjpeg-turbo has jpeg in its PROVIDES, which it does, we can select between 
two different recipes providing that - jpeg and libjpeg-turbo (where the latter 
is provided at all of course, i.e. when you have the meta-oe layer in your 
configuration). 

I don't think there's any special reason we don't have virtual/jpeg rather 
than jpeg here other than that having multiple jpeg decoding libraries is a 
relatively new situation compared to others such as virtual/kernel, and there 
are already a bunch of recipes out there referring to "jpeg" in their DEPENDS. 
(One wonders why there is a need for multiple jpeg decoding libraries in the 
first place, but that's a different can of worms...)
 
Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

