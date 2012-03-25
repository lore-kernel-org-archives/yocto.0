Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FF48E013A8
	for <yocto@yoctoproject.org>; Sun, 25 Mar 2012 13:05:22 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SBtgn-0003DI-1L; Sun, 25 Mar 2012 16:05:21 -0400
Date: Sun, 25 Mar 2012 16:05:08 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <1332697224.23802.50.camel@elmorro>
Message-ID: <alpine.DEB.2.02.1203251602500.9832@oneiric>
References: <alpine.DEB.2.02.1203251319170.24022@oneiric>
	<1332697224.23802.50.camel@elmorro>
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
Subject: Re: does a meta-intel (sub)layer require adding the meta-intel layer to bblayers.conf?
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
X-List-Received-Date: Sun, 25 Mar 2012 20:05:22 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 25 Mar 2012, Tom Zanussi wrote:

> On Sun, 2012-03-25 at 13:23 -0400, Robert P. J. Day wrote:
> > again, a discrepancy between the docs and the source files.  i
> > checked out the entire meta-intel layer, and below that the file
> > meta-crownbay/README clearly states:
> >
> > "Having done that, and assuming you extracted the BSP tarball contents
> > at the top-level of your yocto build tree, you can build a crownbay
> > image by adding the location of the meta-crownbay layer to
> > bblayers.conf, along with the meta-intel layer itself (to access
> > common metadata shared between BSPs) e.g.:
> >
> >   yocto/meta-intel \
> >   yocto/meta-intel/meta-crownbay \"
> >
> >   however, the ref manual, Section 4.1, "BSP Layers", suggests only:
> >
> >      BBLAYERS = " \
> >         /usr/local/src/yocto/meta \
> >         /usr/local/src/yocto/meta-yocto \
> >         /usr/local/src/yocto/meta-<bsp_name> \
> >         "
> >
> > note no mention of including "meta-intel" layer.  clarification?
> >
>
> Yes, I think that's as it should be - the general-purpose documentation
> shouldn't mention specific layers.  meta-intel has its own layering
> requirements as mentioned in the READMEs for those BSPs.  Also I think
> the text mentions it's an example, but I guess I'm a bit confused since
> I'm finding that in section 5.1. Example Filesystem Layout here:
>
> http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html
>
> Am I looking at the wrong thing?

  ah, yes, i'm looking at the *newer* version of that doc as cloned
from yocto-docs where Section 4.1 of that manual is called "BSP
Layers" and really emphasizes meta-intel and related layers and,
because of that, has some awkward wording that might mislead the
reader.  if you want to check the yocto-docs version of the same
manual, you might see what i'm talking about.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

