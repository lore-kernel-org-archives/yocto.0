Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65DF3E0073F
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2013 02:07:54 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 Aug 2013 02:07:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,893,1367996400"; d="scan'208";a="363537560"
Received: from timevans-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.122.223])
	by orsmga001.jf.intel.com with ESMTP; 16 Aug 2013 02:07:40 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Fri, 16 Aug 2013 10:07:39 +0100
Message-ID: <1855392.ynQjeqAi5O@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <8D8C809E9ACF41CF9227B7A89C675A27@PAULD>
References: <D2ED8A5A8E3F4F688EF59142D375B80B@PAULD>
	<2117185.3I4JUhGDnT@helios>
	<8D8C809E9ACF41CF9227B7A89C675A27@PAULD>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: My stuff is missing from rootfs
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
X-List-Received-Date: Fri, 16 Aug 2013 09:07:58 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 15 August 2013 15:38:37 Paul D. DeRocco wrote:
> > On Thursday 15 August 2013 13:01:54 Paul D. DeRocco wrote:
> > > This smells like one of those situations where nuking tmp
> > > and rebuilding will fix it, and we'll never know what was wrong. I'll let
> > > you know if that fixes it.
> > 
> > If you keep on doing this we'll never figure out what the
> > problem is. Wiping out tmp just removes any way we might have to diagnose
> > the issue.
> 
> I didn't wipe it out, I renamed it to something else, so I can switch back
> to it if I need to. 

Apologies, I just assumed that's what you meant by "nuking". If there's a bug 
or otherwise undesirable behaviour that is causing this problem I'd really 
like to figure out what it is so we can fix it for everyone.

> I certainly don't have the faintest idea about how to
> diagnose it, beyond the naive steps I've already taken. And I need to get
> back to my real job, which is writing apps for this system, instead of
> building the distro. If there's anything you can think of that I should
> try, I'd be happy to do so.

You didn't mention in your reply to Saul whether the foo package was mentioned 
in log.do_rootfs or installed_pkgs.txt files in your old tmpdir; was it?

> That said, rebuilding tmp (preserving downloads and sstate-cache) did
> indeed fix that problem, but it was replaced with another. Now, do_rootfs
> is failing, complaining that it "cannot satisfy the following dependencies
> for samba: libpam (>= 1.1.6)". Yet there's libpam, version 1.1.6, right
> where it's always been in the metadata. Doing a clean and a cleansstate on
> libpam didn't help. 

Does samba.inc used by the samba recipe you are building have a PACKAGECONFIG 
line referring to pam? I think that was added recently in meta-oe master (and 
shortly to be merged into the meta-oe dylan branch). Without it there will be 
a floating dependency on pam, which may account for this latter issue.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

