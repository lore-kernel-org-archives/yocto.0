Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24154E01426
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2013 12:01:53 -0700 (PDT)
Received: from [173.34.6.101] (port=51441 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VUhyB-0006Ty-GQ; Fri, 11 Oct 2013 15:01:51 -0400
Date: Fri, 11 Oct 2013 15:01:44 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <1381517187.19281.54.camel@empanada>
Message-ID: <alpine.DEB.2.02.1310111501060.15427@oneiric>
References: <alpine.DEB.2.02.1310110544270.6380@oneiric>
	<1381517187.19281.54.camel@empanada>
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
Subject: Re: why does meta-intel crownbay-noemgd.conf not require "meta-intel"?
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
X-List-Received-Date: Fri, 11 Oct 2013 19:02:02 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 11 Oct 2013, Tom Zanussi wrote:

> On Fri, 2013-10-11 at 05:49 -0400, Robert P. J. Day wrote:
> > perusing sample machine conf files and BSP definitions, looking for
> > nice examples to use in a class in a couple weeks, and i noticed the
> > following oddity under meta-intel/meta-crownbay.
> >
> >   while crownbay.conf contains:
> >
> > require conf/machine/include/tune-atom.inc
> > require conf/machine/include/ia32-base.inc
> > require conf/machine/include/meta-intel.inc
> > require conf/machine/include/meta-intel-emgd.inc
> >
> >   crownbay-noemgd.conf contains only:
> >
> > require conf/machine/include/tune-atom.inc
> > require conf/machine/include/ia32-base.inc
> >
> >   i would have thought the latter would still need to require
> > "meta-intel.inc" for consistency.
> >
> >   i'm sure if i poked around for a few seconds, it would make sense
> > but, just from a visual point of view -- if someone is reading the
> > files trying to understand how to define a BSP -- it looks confusing,
> > no?
> >
>
> Not really - meta-intel is itself a separate layer, and crownbay-noemgd
> doesn't need anything from it, so doesn't need the includes for it.
>
> crownbay.conf does need at least emgd and related packages from
> meta-intel so includes meta-intel.inc and meta-intel-emgd.inc.

  ah, got it, thanks. i should have read a bit more carefully.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

