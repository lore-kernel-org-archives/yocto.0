Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD2A6E00294
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 17:19:11 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:49213 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1TbLRb-0005cZ-Ne; Wed, 21 Nov 2012 20:19:07 -0500
Date: Wed, 21 Nov 2012 20:19:05 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <2124581.mHRnlHMV84@helios>
Message-ID: <alpine.DEB.2.02.1211212015080.3922@oneiric>
References: <alpine.DEB.2.02.1211211718070.14208@oneiric>
	<2124581.mHRnlHMV84@helios>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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
X-List-Received-Date: Thu, 22 Nov 2012 01:19:12 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 21 Nov 2012, Paul Eggleton wrote:

> On Wednesday 21 November 2012 17:23:56 Robert P. J. Day wrote:
> >   i've noticed there are various web pages purporting to explain how
> > to set up a proper OE/yocto development host, but they give what is
> > pretty clearly contradictory information.
> >
> >   as one example, there's this page on getting started with OE:
> >
> > http://www.openembedded.org/wiki/Getting_started
>
> I produced this page recently; FWIW I also came up with the
> pared-down package lists that went into the Quick Start Guide which
> this page borrows. How is this contradictory if it uses the same
> information?
>
> > that claims to steal from a number of sources including the yocto
> > QS guide, but look at the packages one is instructed to install on
> > that page, particularly under fedora: python, perl, git, and so
> > on.
>
> So I don't recall exactly how perl got on that list; but python and
> git are absolutely required on the host. That's why they're in
> ASSUME_PROVIDED.
>
> >   as i read it, the sanity.bbclass and ASSUME_PROVIDED will
> > dictate what needs to be there and what will be used if it's
> > installed natively, no?  it certainly seems that that wiki page is
> > insructing the developer to install a lot of software that OE will
> > handle automatically, no?
>
> Er, no. Well, if by "handle automatically" you mean "error out when
> they are not present" then that's not very helpful - it's much
> easier if people just get a list of what they need to install up
> front.

  at the risk of asking a dumb question, let me make sure i understand
the different categories of software.

  first, there's what is absolutely *required* to be installed on the
development system already before doing any oe/yocto work.  those
would the packages/utilities that are listed on the wiki page as "you
must install this", and that's what's represented in the
sanity.bbclass.  is that about right?

  on the other hand, there's what's listed in ASSUME_PROVIDED, which
represents software that, if it *is* natively installed, will be used;
otherwise, oe/yocto will download and build it as part of the build
process.  correct?  or have i misunderstood the distinction here?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

