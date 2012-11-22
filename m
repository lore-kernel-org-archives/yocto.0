Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07482E003D9
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2012 07:35:54 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 22 Nov 2012 07:35:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,301,1352102400"; d="scan'208";a="251108551"
Received: from unknown (HELO helios.localnet) ([10.252.122.201])
	by fmsmga001.fm.intel.com with ESMTP; 22 Nov 2012 07:35:53 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Thu, 22 Nov 2012 15:35:52 +0000
Message-ID: <1385552.yOr8lfiUWF@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.2.0-33-generic-pae; KDE/4.9.3; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1211220634590.4451@oneiric>
References: <alpine.DEB.2.02.1211211718070.14208@oneiric>
	<2390182.BVIWtCugoK@helios>
	<alpine.DEB.2.02.1211220634590.4451@oneiric>
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
X-List-Received-Date: Thu, 22 Nov 2012 15:35:55 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 22 November 2012 06:54:33 Robert P. J. Day wrote:
> On Thu, 22 Nov 2012, Paul Eggleton wrote:
> > On Wednesday 21 November 2012 20:19:05 Robert P. J. Day wrote:
> > > On Wed, 21 Nov 2012, Paul Eggleton wrote:
> > > > On Wednesday 21 November 2012 17:23:56 Robert P. J. Day wrote:
> > > > > as i read it, the sanity.bbclass and ASSUME_PROVIDED will
> > > > > dictate what needs to be there and what will be used if it's
> > > > > installed natively, no?  it certainly seems that that wiki
> > > > > page is insructing the developer to install a lot of software
> > > > > that OE will handle automatically, no?
> > > > 
> > > > Er, no. Well, if by "handle automatically" you mean "error out
> > > > when they are not present" then that's not very helpful - it's
> > > > much easier if people just get a list of what they need to
> > > > install up front.
> > > > 
> > >   at the risk of asking a dumb question, let me make sure i
> > > 
> > > understand the different categories of software.
> > > 
> > >   first, there's what is absolutely *required* to be installed on
> > > 
> > > the development system already before doing any oe/yocto work.
> > > those would the packages/utilities that are listed on the wiki
> > > page as "you must install this", and that's what's represented in
> > > the sanity.bbclass.  is that about right?
> > > 
> > >   on the other hand, there's what's listed in ASSUME_PROVIDED,
> > > 
> > > which represents software that, if it *is* natively installed,
> > > will be used; otherwise, oe/yocto will download and build it as
> > > part of the build process.  correct?  or have i misunderstood the
> > > distinction here?
> > 
> > I think you may have. All ASSUME_PROVIDED does is tell bitbake that
> > dependencies on the things within it should be considered to be
> > satisfied - i.e. "assume these things are provided". If you add
> > something to ASSUME_PROVIDED that is genuinely needed by the build
> > process and it isn't actually provided by the host system, then you
> > will get build failures or at the very least undesirable changes in
> > build behaviour.
> 
>   ok, after a good night's sleep, i re-read what i wrote above and i
> sound like an idiot so let me try again.
> 
>   first, there's sanity.bbclass, which contains:
> 
> SANITY_REQUIRED_UTILITIES ?= "patch diffstat makeinfo git bzip2 tar gzip
> gawk chrpath wget cpio"
> 
> which represents the utilities that *must* already exist before
> bitbake will offer to do anything.  yes, it's obvious, but i just
> confirmed that by removing "diffstat", whereupon i got:
> 
> ERROR:  OE-core's config sanity checker detected a potential
> misconfiguration. Either fix the cause of this error or at your own risk
> disable the checker (see sanity.conf). Following is the list of potential
> problems / advisories:
> 
>     Please install the following missing utilities: diffstat
> 
>   so that's good, it's what i expected.  it also suggests that, in
> terms of minimal software, it's valid to just point people at that
> variable in sanity.bbclass -- technically, those utilities are the
> ones developers should be ordered to install beforehand.  so far, so
> good.
> 
>   now, regarding ASSUME_PROVIDED in bitbake.conf, as you say, that
> represents any dependencies assumed to be satisfied for further
> processing, and it's not surprising that those two lists are closely
> related -- if, for example, the sanity checker requires bzip2 (as it
> does), it's only natural that ASSUME_PROVIDED would contain
> "bzip2-native."  and so on, and so on.  and now, a few questions that
> probably have obvious answers but i'll ask them, anyway.
> 
>   first, is ASSUME_PROVIDED technically completely superfluous?  it's
> clearly meant to speed up processing, but could one (if one wanted)
> unset it and have the processing still work (albeit more slowly, of
> course)?

If you like building things that you don't have to, sure, but I wouldn't 
equate that to it being superfluous. Note that if you do change this variable 
you are deviating from what has been tested, so you do so at your own risk.

>   next, what about this in bitbake.conf, right after the setting of
> ASSUME_PROVIDED?
> 
> # gzip-native should be listed above?
> 
> should it?  seems to make sense -- why did someone feel the need to
> leave a comment asking that question?

Not sure. We do now build pigz-native instead of using the system gzip though, 
that might have something to do with it not being in the list.

>   next, while ASSUME_PROVIDED contains "grep-native", the sanity check
> doesn't list grep.  should it?  it just seems natural that anything
> you assume to be provided should be listed as an installation
> requirement first.

Probably yes.

>   finally (and because i don't read python all that well, i can't
> check the code as quickly as i would like), how would one add
> subversion to one or both of the above?  after all, the utility name
> is "svn" but the package name (used by recipes) is "subversion".
> (sure seems like subversion would be a good requirement to avoid
> building it.)

The important thing to remember is SANITY_REQUIRED_UTILITIES is a list of 
commands, and ASSUME_PROVIDED is a list of targets that the build system 
understands; items in each must be specified accordingly. For subversion the 
command is "svn" and the target is "subversion-native". Specifically in the 
case of subversion, if I recall corectly we used to list it there but a few 
versions ago we found that some people's installed versions of subversion were 
too old to handle the new repository format that upstream projects have 
upgraded to, so we had little choice but to build it ourselves.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

