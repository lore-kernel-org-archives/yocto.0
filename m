Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A965E00348
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 12:22:03 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:53825 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1Td5Bp-0000RI-Pf; Mon, 26 Nov 2012 15:22:01 -0500
Date: Mon, 26 Nov 2012 15:21:58 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Evade Flow <evadeflow@gmail.com>
In-Reply-To: <CAMAb8ZNU4sTV24ZdTQtmntf3TNn_1rJryi=39k6mqoLbUgOajQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1211261516170.6380@oneiric>
References: <alpine.DEB.2.02.1211211443060.4010@oneiric>
	<CAMAb8ZNU4sTV24ZdTQtmntf3TNn_1rJryi=39k6mqoLbUgOajQ@mail.gmail.com>
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
Subject: Re: my wiki page for using OE and meta-ti layer to build for panda ES
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
X-List-Received-Date: Mon, 26 Nov 2012 20:22:03 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 26 Nov 2012, Evade Flow wrote:

> Love it! Any chance you could add an 'Advanced' or 'Next Steps'
> section that shows how to go beyond a minimal build? Like, how to get
> a working Qt stack into a custom image on the PandaBoard?
>
> On Wed, Nov 21, 2012 at 2:44 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >
> >   not strictly related to yocto but i figured some folks might be
> > interested in a recipe for using OE and the meta-ti layer to build a
> > bootable system for a panda ES:
> >
> > http://www.crashcourse.ca/wiki/index.php/OE-Core%2C_meta-ti_and_the_PandaBoard_ES
> >
> >   feedback welcome.

  at some point, yes, but just to be clear about what i'm trying to
do, while i'm happy to share my findings, i'm documenting solely stuff
that is of use to *me* and the boards i'm using -- in the case above,
the pandaboard ES (Rev B1).  and while the original panda is a
perfectly fine board, it's not what i'm using so i'm not going to
invest any time in it.

  also, before someone suggests i post this stuff at one of common
wikis (elinux.org, etc.), that's also a fine idea but i'm keeping this
stuff at my site out of pure self-interest -- it brings in visitors so
i can promote my training business.  totally selfish.  capitalism. :-)

  all that out of the way, if anyone out there is also working on the
board i'm using and wants to share what they've done or point to sites
that have working recipes for this board, i'll be more than happy to
add that to my wiki page(s).  obviously, this list should be
restricted to yocto-related content to not wander too far afield.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

