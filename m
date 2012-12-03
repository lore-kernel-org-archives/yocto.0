Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ED1EE006C3
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2012 00:16:18 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:35480 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1TfRCJ-0006Gk-DH; Mon, 03 Dec 2012 03:16:15 -0500
Date: Mon, 3 Dec 2012 03:16:10 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <2546786.VL41nEahXp@helios>
Message-ID: <alpine.DEB.2.02.1212030315220.6264@oneiric>
References: <50BBDB70.2040803@intel.com> <5998848.CzcRMVOQ3K@helios>
	<50BBE5DA.3000302@intel.com> <2546786.VL41nEahXp@helios>
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
Cc: yocto@yoctoproject.org, Scott Garman <scott.a.garman@intel.com>
Subject: Re: Use of BBPATH in a layer.conf file.
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
X-List-Received-Date: Mon, 03 Dec 2012 08:16:18 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 2 Dec 2012, Paul Eggleton wrote:

> On Sunday 02 December 2012 15:35:54 you wrote:
> > On 12/02/2012 03:24 PM, Paul Eggleton wrote:
> > > On Sunday 02 December 2012 14:51:28 Scott Garman wrote:
> > >> Robert Day has brought up an inconsistency in the way we append to
> > >> BBPATH within a couple of our layer.conf files.
> > >>
> > >> In meta-hob, meta-yocto-bsp, and meta-intel, we do:
> > >>
> > >> BBPATH := "${BBPATH}:${LAYERDIR}"
> > >>
> > >> but in meta-yocto, we do:
> > >>
> > >> BBPATH := "${LAYERDIR}:${BBPATH}"
> > >>
> > >> Unless someone explains to me that it's necessary to use this different
> > >> ordering in meta-yocto's layer.conf, I will submit a patch to make this
> > >> more consistent.
> > >
> > > I think it actually ought to be:
> > >
> > > BBPATH .= ":${LAYERDIR}"
> >
> > Oh? Would this apply just to meta-yocto or all layer.conf files?
>
> All, really. Functionally it makes no real difference, but I think it's
> preferred stylistically based on previous discussions.

  hang on ... i thought the ordering of BBPATH would affect the
processing of "include" directives.  no?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

