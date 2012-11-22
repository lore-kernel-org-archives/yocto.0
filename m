Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B914EE002AB
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2012 01:56:09 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 22 Nov 2012 01:56:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,299,1352102400"; d="scan'208";a="221028317"
Received: from unknown (HELO helios.localnet) ([10.252.122.201])
	by azsmga001.ch.intel.com with ESMTP; 22 Nov 2012 01:56:07 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Thu, 22 Nov 2012 09:56:05 +0000
Message-ID: <2390182.BVIWtCugoK@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.2.0-33-generic-pae; KDE/4.9.3; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1211212015080.3922@oneiric>
References: <alpine.DEB.2.02.1211211718070.14208@oneiric>
	<2124581.mHRnlHMV84@helios>
	<alpine.DEB.2.02.1211212015080.3922@oneiric>
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
X-List-Received-Date: Thu, 22 Nov 2012 09:56:09 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 21 November 2012 20:19:05 Robert P. J. Day wrote:
> On Wed, 21 Nov 2012, Paul Eggleton wrote:
> > On Wednesday 21 November 2012 17:23:56 Robert P. J. Day wrote:
> > > as i read it, the sanity.bbclass and ASSUME_PROVIDED will
> > > dictate what needs to be there and what will be used if it's
> > > installed natively, no?  it certainly seems that that wiki page is
> > > insructing the developer to install a lot of software that OE will
> > > handle automatically, no?
> > 
> > Er, no. Well, if by "handle automatically" you mean "error out when
> > they are not present" then that's not very helpful - it's much
> > easier if people just get a list of what they need to install up
> > front.
> 
>   at the risk of asking a dumb question, let me make sure i understand
> the different categories of software.
> 
>   first, there's what is absolutely *required* to be installed on the
> development system already before doing any oe/yocto work.  those
> would the packages/utilities that are listed on the wiki page as "you
> must install this", and that's what's represented in the
> sanity.bbclass.  is that about right?
> 
>   on the other hand, there's what's listed in ASSUME_PROVIDED, which
> represents software that, if it *is* natively installed, will be used;
> otherwise, oe/yocto will download and build it as part of the build
> process.  correct?  or have i misunderstood the distinction here?

I think you may have. All ASSUME_PROVIDED does is tell bitbake that 
dependencies on the things within it should be considered to be satisfied - 
i.e. "assume these things are provided". If you add something to 
ASSUME_PROVIDED that is genuinely needed by the build process and it isn't 
actually provided by the host system, then you will get build failures or at 
the very least undesirable changes in build behaviour.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

