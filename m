Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D8F9E0144A
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 07:23:05 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:55563 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UTCDQ-0002YN-GN; Fri, 19 Apr 2013 10:23:04 -0400
Date: Fri, 19 Apr 2013 10:23:01 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
In-Reply-To: <517151AF.3030301@r-finger.com>
Message-ID: <alpine.DEB.2.02.1304191019470.5475@oneiric>
References: <alpine.DEB.2.02.1304190945410.5102@oneiric>
	<CAJTo0Lac3O-3n13gbzEcKysxijojQMgj0k5Sh1YTuk6dDVkFNw@mail.gmail.com>
	<517151AF.3030301@r-finger.com>
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
Subject: Re: any point in a single machine recipe using a machine-specific file?
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
X-List-Received-Date: Fri, 19 Apr 2013 14:23:05 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 19 Apr 2013, Tomas Frydrych wrote:

> On 19/04/13 15:02, Burton, Ross wrote:
> > On 19 April 2013 14:49, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >>   but in the case of the rpi, is there any value in putting the
> >> files under a machine-named subdirectory? of course it won't
> >> hurt, but is there any point to it?
> >
> > You could argue the clarity that it will bring if another machine
> > is added to the BSP - the maintainer will be forced to decide if
> > it's common across all machines that the BSP will service, or
> > truly is specific to a particular machine.
>
> No, no, no, this has nothing to do with clarity, it's the only way
> in which it can be done without breaking other machines. As Martin
> said, multiple BSP layers often are included at the same time, and
> if a config file pulled in by a BSP bbappend is not made machine
> specific (which is what the machine specific directory means), it
> will be installed for any machine that does not come with a higher
> priority bbappend that also overrides this file.

  ok, now we're getting somewhere -- so it would be *strongly*
*encouraged* to make all of these bbappend files machine-specific?
that is, if you want to avoid potential confusion down the road. i'm
still a bit queasy on the idea that you'd include so many layers that
this might be an issue but ... whatever. i mean, if i wasn't
specifically building for an rpi, i can't imagine why i'd include the
meta-rpi layer.

> As an additional point, the 'interfaces' file should not be included
> in a netbase bbappend, it's not part of the netbase base package ...
> I opened a bug against meta-yocto-bsp for this, but seems this is
> more wide spread.

  huh, you're right, i'd never noticed that.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

