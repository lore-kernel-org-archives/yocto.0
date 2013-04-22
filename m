Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC217E006F9
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 09:24:25 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:39193 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UUJXU-00057h-PH; Mon, 22 Apr 2013 12:24:24 -0400
Date: Mon, 22 Apr 2013 12:24:21 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <1366647280.1627.7.camel@empanada>
Message-ID: <alpine.DEB.2.02.1304221218570.8230@oneiric>
References: <alpine.DEB.2.02.1304221056510.7236@oneiric>
	<1366647280.1627.7.camel@empanada>
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
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: remaining comments on current BSP developers guide
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
X-List-Received-Date: Mon, 22 Apr 2013 16:24:25 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 22 Apr 2013, Tom Zanussi wrote:

> On Mon, 2013-04-22 at 12:00 -0400, Robert P. J. Day wrote:
>
> > 1.6.1 Common Features
> >
> > * "Both tools [yocto-bsp and yocto-kernel] reside in the scripts/
> > subdirectory of the Source Directory." no, they don't, they're in
> > meta-yocto/scripts/, so simply sourcing oe-init-build-env isn't
> > sufficient to add them to the search path, is it? (i'm guessing it
> > used to be, but no longer.)
> >
>
> Not sure what you're looking at to see that.  This is what I have:
>
> [trz@empanada dylan-cur]$ pwd
> /home/trz/yocto/dylan-cur
> [trz@empanada dylan-cur]$ ls
> bitbake        LICENSE   meta-intel     meta-yocto-bsp     README
> build          meta      meta-skeleton  oe-init-build-env  README.hardware
> documentation  meta-hob  meta-yocto     poky-extras        scripts

  ah, i see, that's because i have a mega-directory of layers and
don't check out meta-yocto or meta-yocto-bsp into the same directory
as oe-core. you obviously check out "poky", which puts everything in
one place under scripts/. but the yocto-* utilities are technically
part of the meta-yocto "layer". perhaps that should be made clear.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

