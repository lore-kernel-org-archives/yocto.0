Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF6EEE00B68; Fri, 16 May 2014 04:16:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga03.intel.com (unknown [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B4F4E00975
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 04:16:29 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 May 2014 04:16:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,1066,1389772800"; d="scan'208";a="433011114"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.123.87])
	by azsmga001.ch.intel.com with ESMTP; 16 May 2014 04:16:27 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 16 May 2014 12:16:26 +0100
Message-ID: <70015786.1gtbouFiKb@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.3-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <5375ED87.1000605@mlbassoc.com>
References: <5373B0AB.4070204@mlbassoc.com> <1400187220.28353.15.camel@ted>
	<5375ED87.1000605@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Where did my preferred version go?
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
X-List-Received-Date: Fri, 16 May 2014 11:16:32 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Gary,

On Friday 16 May 2014 04:50:47 Gary Thomas wrote:
> On 2014-05-15 14:53, Richard Purdie wrote:
> > On Wed, 2014-05-14 at 12:06 -0600, Gary Thomas wrote:
> >> I have a number of platforms which [for whatever reason]
> >> need older versions of GCC.  I've been supporting this by
> >> keeping the older code around in my own layers - I need
> >> 4.7.x for some targets, even 4.6.x for others.
> >> 
> >> With the changes in the latest master (post 1.6/daisy), I
> >> am no longer able to build those older compilers :-(  First
> >> I had to fix up some core changes to just get the recipes to
> >> even parse (bb.utils.contains), but now I get a slew of errors
> >> 
> >> like these:
> >>     NOTE: preferred version 4.7% of libgcc-initial not available (for
> >>     item libgcc-initial) NOTE: versions of libgcc-initial available:
> >>     4.8.2 4.9.0
> >> 
> >> I looked at the old recipes and they don't provide these
> >> packages which make them unsuitable.
> >> 
> >> I know I should move these targets to the newer GCC, but at
> >> this moment there simply are not the resources to do so, but
> >> we still want to benefit from other improvements in OE-core
> >> (and Poky/Yocto).
> >> 
> >> How can I move forward?  Is there some way to retrofit the
> >> older compilers into the new [required] structures?  Perhaps
> >> I could use the older compilers as external tool chain, but
> >> the last time I tried to use this (in place of the internal,
> >> build in place) tools, I could never make things happy :-(
> >> 
> >> Any suggestions more than welcome, thanks
> > 
> > How are you doing this? Have you a completely separate set of gcc
> > recipes including the include files or is this using the current include
> 
> > files. You basically have two options:
> I made a complete copy of recipes-devtools/gcc before the original 4.8
> recipes were added.
> 
> > a) Apply the changes that were made in master gcc to the 4.7 recipes,
> > you can then probably share includes.
> > 
> > b) Use a separate set of 4.7 files and "undo" some of the changes in
> > master using creative variable names. E.g., libgcc-initial was added:
> > 
> > recipes-core/eglibc/eglibc-initial.inc:DEPENDS = "linux-libc-headers
> > virtual/${TARGET_PREFIX}gcc-initial libgcc-initial"
> > recipes-core/eglibc/eglibc.inc:DEPENDS =
> > "virtual/${TARGET_PREFIX}gcc-initial libgcc-initial linux-libc-headers
> > virtual/${TARGET_PREFIX}libc-initial"
> > 
> > so you could do a:
> > 
> > DEPENDS_remove_pn-eglibc-initial - "libgcc-initial"
> > DEPENDS_remove_pn-eglibc - "libgcc-initial"
> > 
> > Thinking a bit more, the issue that is going to hit you hard are the -PN
> > additions to the cross recipe changes (and their change in arch). My
> > strong recommendation is therefore a) and then replaying the gcc changes
> > made in master against the 4.7 version. These were:
> > 
> > http://git.yoctoproject.org/cgit.cgi/poky/log/meta/recipes-devtools/gcc
> > 
> > there are about 10 or so changes there you'd need to check in your 4.7
> > recipes (since the 25th April) but nothing particularly difficult.
> 
> Thanks for these pointers.  I've given them a quick look and indeed
> they look manageable, so I'll probably give them a go.
> 
> Do you know if anyone has ever [successfully!] used an existing
> Poky/Yocto toolchain via the EXTERNAL_TOOLCHAIN method, like is
> done by the meta-sourcery layers/tools?  I would think that would
> be my safest bet - capture a working toolchain (I use both 4.6.3
> and 4.7.2) and then enable the external support with the appropriate
> toolchain/version (captured and managed out of band) for the targets
> that need them.  How hard might this be?

We don't support this usage at the moment in OE; if you use the OE toolchain 
we recommend you let the system build it, and it will then be restored from 
shared state for subsequent builds. I searched around for discussion on this 
and coincidentally I turned up a thread you were on a few years ago:

  http://comments.gmane.org/gmane.linux.embedded.poky/7049

There was some discussion at the OEDAM meeting recently about trying to bring 
this back, but I'm pretty sure Richard is keen to avoid going down that path 
for the same reasons we've been avoiding it so far.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

