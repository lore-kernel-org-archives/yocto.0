Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 758F9E0169E
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2013 02:09:33 -0800 (PST)
Received: from [173.34.6.101] (port=36299 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VhGLC-0002u7-Ss; Fri, 15 Nov 2013 05:09:30 -0500
Date: Fri, 15 Nov 2013 05:09:23 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <1733345.i7ehKFuPNv@helios>
Message-ID: <alpine.DEB.2.02.1311150505090.30443@oneiric>
References: <alpine.DEB.2.02.1311140901570.24348@oneiric>
	<1733345.i7ehKFuPNv@helios>
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
Subject: Re: is the ref manual DISTRO_FEATURES list meant to be exhaustive?
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
X-List-Received-Date: Fri, 15 Nov 2013 10:09:35 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 14 Nov 2013, Paul Eggleton wrote:

> Hi Robert,
>
> On Thursday 14 November 2013 09:05:09 Robert P. J. Day wrote:
> >   just noticed that the list of DISTRO_FEATURES values listed here:
> >
> > http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#ref-featu
> > res-distro
> >
> > is somewhat incomplete. is that deliberate? just from poking
> > around the dora release, i can see tests for DISTRO_FEATURES
> > values of ptest, directfb, pam, zeroconf, acl, xattr, sysvinit and
> > more. should those values also be part of that list, or is the ref
> > manual only attempting to present a subset?
>
> It's meant to be complete. I think as new values have been
> introduced we have neglected to add them to the list, but they
> should be added.

  in case this is helpful, here's the full list i came up with using a
simple grep search looking through the dora 10.0 source tree for
DISTRO_FEATURES tests of values that aren't listed in section 10.1 of
the ref manual:

 3g
 acl
 directfb
 ipv4
 largefile
 libc-posix-clang-wchar
 ld-is-gold
 multiarch
 nfc
 openvg
 pam
 pie
 pulseaudio
 ptest
 sysvinit
 x11
 xattr
 zeroconf

conversely, there *are* a few values listed in section 10.1 of the ref
manual that don't appear to be tested for anywhere (typo? obsolete?)

 ext2
 irda (this is a MACHINE feature but not a DISTRO feature)
 sdk-pms

for what it's worth. i'm about to do the same scan for
MACHINE_FEATURES.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

