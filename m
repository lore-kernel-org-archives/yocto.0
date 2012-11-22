Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2FA6E002AB
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2012 03:54:36 -0800 (PST)
Received: from cpebcc8100fb8db-cmbcc8100fb8d8.cpe.net.cable.rogers.com
	([174.116.196.46]:46456 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1TbVMZ-0000i3-OO; Thu, 22 Nov 2012 06:54:35 -0500
Date: Thu, 22 Nov 2012 06:54:33 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <2390182.BVIWtCugoK@helios>
Message-ID: <alpine.DEB.2.02.1211220634590.4451@oneiric>
References: <alpine.DEB.2.02.1211211718070.14208@oneiric>
	<2124581.mHRnlHMV84@helios>
	<alpine.DEB.2.02.1211212015080.3922@oneiric>
	<2390182.BVIWtCugoK@helios>
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
X-List-Received-Date: Thu, 22 Nov 2012 11:54:37 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 22 Nov 2012, Paul Eggleton wrote:

> On Wednesday 21 November 2012 20:19:05 Robert P. J. Day wrote:
> > On Wed, 21 Nov 2012, Paul Eggleton wrote:
> > > On Wednesday 21 November 2012 17:23:56 Robert P. J. Day wrote:
> > > > as i read it, the sanity.bbclass and ASSUME_PROVIDED will
> > > > dictate what needs to be there and what will be used if it's
> > > > installed natively, no?  it certainly seems that that wiki
> > > > page is insructing the developer to install a lot of software
> > > > that OE will handle automatically, no?
> > >
> > > Er, no. Well, if by "handle automatically" you mean "error out
> > > when they are not present" then that's not very helpful - it's
> > > much easier if people just get a list of what they need to
> > > install up front.
> >
> >   at the risk of asking a dumb question, let me make sure i
> > understand the different categories of software.
> >
> >   first, there's what is absolutely *required* to be installed on
> > the development system already before doing any oe/yocto work.
> > those would the packages/utilities that are listed on the wiki
> > page as "you must install this", and that's what's represented in
> > the sanity.bbclass.  is that about right?
> >
> >   on the other hand, there's what's listed in ASSUME_PROVIDED,
> > which represents software that, if it *is* natively installed,
> > will be used; otherwise, oe/yocto will download and build it as
> > part of the build process.  correct?  or have i misunderstood the
> > distinction here?
>
> I think you may have. All ASSUME_PROVIDED does is tell bitbake that
> dependencies on the things within it should be considered to be
> satisfied - i.e. "assume these things are provided". If you add
> something to ASSUME_PROVIDED that is genuinely needed by the build
> process and it isn't actually provided by the host system, then you
> will get build failures or at the very least undesirable changes in
> build behaviour.

  ok, after a good night's sleep, i re-read what i wrote above and i
sound like an idiot so let me try again.

  first, there's sanity.bbclass, which contains:

SANITY_REQUIRED_UTILITIES ?= "patch diffstat makeinfo git bzip2 tar gzip gawk chrpath wget cpio"

which represents the utilities that *must* already exist before
bitbake will offer to do anything.  yes, it's obvious, but i just
confirmed that by removing "diffstat", whereupon i got:

ERROR:  OE-core's config sanity checker detected a potential misconfiguration.
    Either fix the cause of this error or at your own risk disable the checker (see sanity.conf).
    Following is the list of potential problems / advisories:

    Please install the following missing utilities: diffstat

  so that's good, it's what i expected.  it also suggests that, in
terms of minimal software, it's valid to just point people at that
variable in sanity.bbclass -- technically, those utilities are the
ones developers should be ordered to install beforehand.  so far, so
good.

  now, regarding ASSUME_PROVIDED in bitbake.conf, as you say, that
represents any dependencies assumed to be satisfied for further
processing, and it's not surprising that those two lists are closely
related -- if, for example, the sanity checker requires bzip2 (as it
does), it's only natural that ASSUME_PROVIDED would contain
"bzip2-native."  and so on, and so on.  and now, a few questions that
probably have obvious answers but i'll ask them, anyway.

  first, is ASSUME_PROVIDED technically completely superfluous?  it's
clearly meant to speed up processing, but could one (if one wanted)
unset it and have the processing still work (albeit more slowly, of
course)?

  next, what about this in bitbake.conf, right after the setting of
ASSUME_PROVIDED?

# gzip-native should be listed above?

should it?  seems to make sense -- why did someone feel the need to
leave a comment asking that question?

  next, while ASSUME_PROVIDED contains "grep-native", the sanity check
doesn't list grep.  should it?  it just seems natural that anything
you assume to be provided should be listed as an installation
requirement first.

  finally (and because i don't read python all that well, i can't
check the code as quickly as i would like), how would one add
subversion to one or both of the above?  after all, the utility name
is "svn" but the package name (used by recipes) is "subversion".
(sure seems like subversion would be a good requirement to avoid
building it.)

  ok, i'm done.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

