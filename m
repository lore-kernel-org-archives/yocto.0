Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D6C4E0044A
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 14:10:46 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1SFXTZ-0006qa-KS; Wed, 04 Apr 2012 17:10:45 -0400
Date: Wed, 4 Apr 2012 17:10:39 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <1333573006.2011.12.camel@elnicho>
Message-ID: <alpine.DEB.2.02.1204041709150.13716@oneiric>
References: <alpine.DEB.2.02.1204041614430.11031@oneiric>
	<1333573006.2011.12.camel@elnicho>
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
Subject: Re: are there more yocto-bsp commands other than "create" and "list"?
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
X-List-Received-Date: Wed, 04 Apr 2012 21:10:46 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 4 Apr 2012, Tom Zanussi wrote:

> On Wed, 2012-04-04 at 16:16 -0400, Robert P. J. Day wrote:
> > help for yocto-bsp reads:
> >
> >  The most commonly used 'yocto-bsp' commands are:
> >     create            Create a new Yocto BSP
> >     list              List available values for options and BSP properties
> >
> > but from the script:
> >
> > subcommands = {
> >     "create": [yocto_bsp_create_subcommand,
> >                yocto_bsp_create_usage,
> >                yocto_bsp_create_help],
> >     "list":   [yocto_bsp_list_subcommand,
> >                yocto_bsp_list_usage,
> >                yocto_bsp_list_help],
> > }
> >
> >   so it's not so much they're the most common commands, aren't they
> > the *only* commands?  or am i misreading something?
> >
>
> At the moment, they are the only commands, and I guess therefore also
> the most commonly used.
>
> The interface is modeled after git and perf, which both use the same
> text.  I suppose that to avoid being misleading, we should replace 'most
> commonly' with 'available', also since I also don't envision adding any
> 'rare' commands...

  that's pretty much the observation i was making.  the same holds for
yocto-kernel.  i can submit a patch shortly, perhaps:

  Current yocto-<whatever> commands are:

does that work for you?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

