Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AD01E0141C
	for <yocto@yoctoproject.org>; Fri, 23 Nov 2012 06:39:26 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 Nov 2012 06:38:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,307,1352102400"; d="scan'208";a="223486083"
Received: from unknown (HELO helios.localnet) ([10.252.122.229])
	by orsmga001.jf.intel.com with ESMTP; 23 Nov 2012 06:39:25 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Fri, 23 Nov 2012 14:39:23 +0000
Message-ID: <3038126.PEqOPPdATB@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.2.0-33-generic-pae; KDE/4.9.3; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1211230924450.3405@oneiric>
References: <alpine.DEB.2.02.1211211718070.14208@oneiric>
	<1385552.yOr8lfiUWF@helios>
	<alpine.DEB.2.02.1211230924450.3405@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: inconsistent pages out there for setting up your yocto dev host
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
X-List-Received-Date: Fri, 23 Nov 2012 14:39:26 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 23 November 2012 09:31:39 Robert P. J. Day wrote:
> On Thu, 22 Nov 2012, Paul Eggleton wrote:
> > On Thursday 22 November 2012 06:54:33 Robert P. J. Day wrote:
> > >   first, is ASSUME_PROVIDED technically completely superfluous?
> > > 
> > > it's clearly meant to speed up processing, but could one (if one
> > > wanted) unset it and have the processing still work (albeit more
> > > slowly, of course)?
> > 
> > If you like building things that you don't have to, sure, but I
> > wouldn't equate that to it being superfluous. Note that if you do
> > change this variable you are deviating from what has been tested, so
> > you do so at your own risk.
> 
>   wait, this point interests me so indulge me for a minute.
> obviously, there is a minimum collection of software one must install
> before starting to use OE/yocto -- at the very least, say, the
> fetching software -- so there will always be a page instructing a
> developer to install that minimum.
> 
>   afterwards, you can use ASSUME_PROVIDED to take advantage of that
> software, correct?  and that will certainly speed things up.  but in
> what way does that represent a "tested" configuration?

Well, we don't test with any other value of ASSUME_PROVIDED. If you add tools 
to ASSUME_PROVIDED that we would have otherwise built so that the host tools 
are used, we haven't tested the build with those host tools. Equally if you 
remove items from the default value of ASSUME_PROVIDED, we don't necessarily 
fully test the system with native tools that we don't normally build (although 
that's less likely to be an issue than the other case).

I'm not saying you can't change the value of ASSUME_PROVIDED - just that if 
you do and the build breaks, you get to keep both pieces :)

>   if you're on an allegedly supported distro, and you do an upgrade,
> it's entirely possible that one of those bits of software gets
> upgraded in a way that breaks OE/yocto, and by using ASSUME_PROVIDED,
> you'll automatically start using that newer utility.  or is the list
> of supported distros specifically only those installed out of the box
> and never updated?  if that's the case, then, yes, i agree with your
> position.

That's why we test specific versions of distributions, and with the Poky distro 
config we warn the user if the distro/distro version is untested. It's rare 
that you get that kind of breakage between major versions; if there were then 
other applications are likely to be affected so it would be considered a 
regression in that distro.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

