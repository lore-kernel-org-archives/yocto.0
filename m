Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDB5CE0127C
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 03:03:41 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:57918 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TjT3L-0007k7-Fj; Fri, 14 Dec 2012 06:03:39 -0500
Date: Fri, 14 Dec 2012 06:03:28 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <50CAA209.1000009@windriver.com>
Message-ID: <alpine.DEB.2.02.1212140601590.6405@oneiric>
References: <alpine.DEB.2.02.1212131456500.10980@oneiric>
	<88701C38B5D07249817D428430999C9128AA9E5D@sestoex09.enea.se>
	<alpine.DEB.2.02.1212131644350.12603@oneiric>
	<50CA5BE5.5000709@mlbassoc.com> <50CAA209.1000009@windriver.com>
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
Subject: Re: [PATCH] Use "+=" consistently when setting IMAGE_FSTYPES in Yocto machine conf files.
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
X-List-Received-Date: Fri, 14 Dec 2012 11:03:42 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-241645541-1355483018=:6405"

--8323329-241645541-1355483018=:6405
Content-Type: TEXT/PLAIN; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT

On Thu, 13 Dec 2012, Bruce Ashfield wrote:

> On 12-12-13 5:51 PM, Gary Thomas wrote:
> > On 2012-12-13 14:45, Robert P. J. Day wrote:
> > > On Thu, 13 Dec 2012, David Nyström wrote:
> > >
> > > > Hi,
> > > >
> > > > Hmm,
> > > > This will lead to these variables beeing append:able but
> > > > non-overridable in image layer, as an(un?)intended consequence,
> > > > right ?
> > > >
> > > > -----Original Message-----
> > > > From: Robert P. J. Day [rpjday@crashcourse.ca]
> > > > Received: Thursday, 13 Dec 2012, 20:59
> > > > To: Yocto discussion list [yocto@yoctoproject.org]
> > > > Subject: [yocto] [PATCH] Use "+=" consistently when setting
> > > > IMAGE_FSTYPES in Yocto machine conf files.
> > > >
> > > > diff --git a/meta-yocto-bsp/conf/machine/atom-pc.conf
> > > > b/meta-yocto-bsp/conf/machine/atom-pc.conf
> > > > index 77dd7fb..fbde1d3 100644
> > > > --- a/meta-yocto-bsp/conf/machine/atom-pc.conf
> > > > +++ b/meta-yocto-bsp/conf/machine/atom-pc.conf
> > > > @@ -25,7 +25,7 @@ XSERVER ?= "xserver-xorg \
> > > >
> > > > MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
> > > >
> > > > -IMAGE_FSTYPES ?= "ext3 cpio.gz live"
> > > > +IMAGE_FSTYPES += "ext3 cpio.gz live"
> > > >
> > > > APPEND += "usbcore.autosuspend=1"
> > > >
> > > > diff --git a/meta-yocto-bsp/conf/machine/routerstationpro.conf
> > > > b/meta-yocto-bsp/conf/machine/routerstationpro.conf
> > > > index e5e4d1a..c7a5ad5 100644
> > > > --- a/meta-yocto-bsp/conf/machine/routerstationpro.conf
> > > > +++ b/meta-yocto-bsp/conf/machine/routerstationpro.conf
> > > > @@ -22,5 +22,5 @@ USE_VT ?= "0"
> > > >
> > > > MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
> > > >
> > > > -IMAGE_FSTYPES ?= "jffs2 tar.bz2"
> > > > +IMAGE_FSTYPES += "jffs2 tar.bz2"
> > >
> > > please don't top post. and i'll have to take a look at this to see
> > > what the potential problem is here. can anyone else see a potential
> > > issue with this patch?
> >
> > Yes, as David said, it eliminates the possibility of overriding
> > the variable. IMO, all of these should be ?= which lets there
> > be a useful default, but can still be [completely] overridden
> > by the user.
>
> I'd agree that if we were shooting for consistency, I'd go with
> ?= and not the +=.

  if someone thinks that's a cleanup worth making and wants to take
it, help yourself to it, i'm going to be buried in ADT stuff all day.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323329-241645541-1355483018=:6405--
