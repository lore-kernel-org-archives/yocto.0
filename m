Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B82F8E011B1
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2013 05:38:16 -0700 (PDT)
Received: from [173.34.6.101] (port=52996 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VVhPb-0008Dp-0i; Mon, 14 Oct 2013 08:38:15 -0400
Date: Mon, 14 Oct 2013 08:38:04 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <6459470.uGImPsLe3U@helios>
Message-ID: <alpine.DEB.2.02.1310140837410.15056@oneiric>
References: <alpine.DEB.2.02.1310140740410.13343@oneiric>
	<6459470.uGImPsLe3U@helios>
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
Subject: Re: meta-yocto-bsp defines linux-yocto_3.2.bbappend, no match in oe-core
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
X-List-Received-Date: Mon, 14 Oct 2013 12:38:16 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 14 Oct 2013, Paul Eggleton wrote:

> Hi Robert,
>
> On Monday 14 October 2013 07:43:47 Robert P. J. Day wrote:
> >   prepared to be told i need sleep after working all night but wanting
> > to build for beagleboard using meta-yocto-bsp and:
> >
> > ERROR: No recipes available for:
> >
> > /home/rpjday/oe/dist/layers/meta-yocto/meta-yocto-bsp/recipes-kernel/linux/l
> > inux-yocto_3.2.bbappend ERROR: Command execution failed: Exited with 1
> >
> > which is apparently correct -- oe-core provides no base
> > linux-yocto_3.2 recipe to match that bbappend file.
> >
> >   am i just being silly?
>
> Are you sure you're using the right branch of the meta-yocto
> repository to match the branch of OE-Core you are using? (I'm
> assuming you're using OE-Core, because you wouldn't get much out of
> using meta-yocto separately with poky given that poky includes the
> contents of the meta-yocto repo).

  see? i was just being silly. wrong branch.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

