Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75A8BE0144A
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 07:59:38 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:56201 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UTCmn-0004Yb-JS; Fri, 19 Apr 2013 10:59:37 -0400
Date: Fri, 19 Apr 2013 10:59:35 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
In-Reply-To: <51715B36.9040408@r-finger.com>
Message-ID: <alpine.DEB.2.02.1304191058460.5834@oneiric>
References: <alpine.DEB.2.02.1304190945410.5102@oneiric>
	<CAJTo0Lac3O-3n13gbzEcKysxijojQMgj0k5Sh1YTuk6dDVkFNw@mail.gmail.com>
	<alpine.DEB.2.02.1304191008450.5407@oneiric>
	<517152BC.8070905@r-finger.com>
	<alpine.DEB.2.02.1304191032090.5553@oneiric>
	<51715B36.9040408@r-finger.com>
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
X-List-Received-Date: Fri, 19 Apr 2013 14:59:38 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 19 Apr 2013, Tomas Frydrych wrote:

> On 19/04/13 15:34, Robert P. J. Day wrote:
> > On Fri, 19 Apr 2013, Tomas Frydrych wrote:
> >
> >> On 19/04/13 15:15, Robert P. J. Day wrote:
> >>> i'd wonder, if you're building for a different machine, why are
> >>> you including the meta-rpi layer?
> >>
> >> Because at a distro-level you often want to target different
> >> architectures.
> >
> >   yes, i appreciate that but, in *this* case, we're talking about a
> > single machine with a single architecture. i'm pretty sure we're
> > agreeing, i'm just pointing out that in this specific example, having
> > a machine-specific subdirectory is overkill.
>
> BSP layers are not stand alone entities, they can never assume that
> no other machines exist in the ecosystem they are pulled into. So,
> no, it is most definitely not an overkill. I am not sure how else to
> explain it, maybe fix up the RPI layer the way you intended locally
> and build yourself a Qemu image, see what happens to your interfaces
> file.

  no, no, i'm good with this -- is this point made emphatically
anywhere in the existing docs?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

