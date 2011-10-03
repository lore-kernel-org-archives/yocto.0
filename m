Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10286E004E4
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2011 16:25:10 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Oct 2011 16:25:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,481,1312182000"; d="scan'208";a="74083208"
Received: from unknown (HELO [10.255.15.15]) ([10.255.15.15])
	by fmsmga002.fm.intel.com with ESMTP; 03 Oct 2011 16:25:09 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <1317683930.2323.28.camel@elmorro>
References: <4E8A0380.1030502@linux.intel.com>
	<1317668520.12684.8.camel@ted> <1317668867.2323.24.camel@elmorro>
	<4E8A1DD4.6010303@linux.intel.com> <1317683930.2323.28.camel@elmorro>
Date: Mon, 03 Oct 2011 18:25:47 -0500
Message-ID: <1317684347.2323.31.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Yocto Project <yocto@yoctoproject.org>, "Wold, Saul" <saul.wold@intel.com>
Subject: Re: GRUB fix for 1.1: Preferred approach for default grub version
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
X-List-Received-Date: Mon, 03 Oct 2011 23:25:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-10-03 at 16:18 -0700, Tom Zanussi wrote:
> On Mon, 2011-10-03 at 13:40 -0700, Darren Hart wrote:
> > 
> > On 10/03/2011 12:07 PM, Tom Zanussi wrote:
> > > On Mon, 2011-10-03 at 12:01 -0700, Richard Purdie wrote:
> > >> On Mon, 2011-10-03 at 11:48 -0700, Darren Hart wrote:
> > >>> When grub2 was merged int oe-core, it became the default (rather than
> > >>> being explicitly requested by the 64b meta-intel BSPs). This breaks the
> > >>> live install on 32b systems, like the n450 - installing grub v1.99 with
> > >>> a grub v1 config.
> > >>>
> > >>> We have a couple options on how to fix this.
> > >>>
> > >>> 1) Set PREFERRED_PROVIDER_grub="0.97" in all 32b x86 machine configs
> > >>> 2) Set DEFAULT_PREFERENCE="-1" in the grub_1.99.bb recipe which would
> > >>>    affect all of oe-core.
> > >>> 3) Some alternate approach which would be the equivalent of
> > >>>    DEFAULT_PREFERENCE, but only for meta-yocto BSPs or the poky
> > >>>    "distro".
> > >>>
> > >>> Given the time frame, I'd prefer to agree on the approach before writing
> > >>> and testing patches. Preferences?
> > >>
> > >> I thought I'd been assured grub2 worked fine for our 32 and 64 bit
> > >> platforms? :/.
> > >>
> > >> The correct question here is why doesn't grub2 work on 32 bit platforms?
> > >>
> > > 
> > > I did test it with both 32-bit and 64-bit BSPs in meta-intel, so it
> > > should work for the n450 too.
> > 
> > I checked out edison in poky in meta-intel and built core-image-minimal
> > for n450. By default it builds GRUB 2, which after install boots to a
> > GRUB prompt with no menu.
> > 
> 
> I'm not even getting that far with edison - it fails at 'Searching for a
> hard drive'.  I'd be happy to have it fail with no menu.
> 
> Can you send me the commit ids for meta-intel and poky that actually got
> you that far, and if you could a serial capture of the install?
> 

Never mind, I actually didn't have a hard drive (wrong power source).
Once I changed that, I got a good install (on crownbay).

It would still be useful to have the serial capture for the n450
though...

Tom


> Thanks,
> 
> Tom
> 
> > Using the PREFERRED_PROVIDER method above with the edison branches
> > results in a GRUB 1 menu after install.
> > 
> > --
> > Darren
> > 
> > > 
> > > Tom
> > > 
> > >> The answer might be "we need for time than is available in the 1.1
> > >> release to fix it" but I'd at least like to see the answer to the
> > >> question before we start with workarounds.
> > >>
> > >> Cheers,
> > >>
> > >> Richard
> > >>
> > > 
> > > 
> > 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



