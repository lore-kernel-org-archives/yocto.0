Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11020E01410
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 07:15:30 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:55522 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UTC65-0002CD-4T; Fri, 19 Apr 2013 10:15:29 -0400
Date: Fri, 19 Apr 2013 10:15:26 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: "Burton, Ross" <ross.burton@intel.com>
In-Reply-To: <CAJTo0Lac3O-3n13gbzEcKysxijojQMgj0k5Sh1YTuk6dDVkFNw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1304191008450.5407@oneiric>
References: <alpine.DEB.2.02.1304190945410.5102@oneiric>
	<CAJTo0Lac3O-3n13gbzEcKysxijojQMgj0k5Sh1YTuk6dDVkFNw@mail.gmail.com>
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
X-List-Received-Date: Fri, 19 Apr 2013 14:15:31 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 19 Apr 2013, Burton, Ross wrote:

> On 19 April 2013 14:49, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >   but in the case of the rpi, is there any value in putting the
> > files under a machine-named subdirectory? of course it won't hurt,
> > but is there any point to it?
>
> You could argue the clarity that it will bring if another machine is
> added to the BSP - the maintainer will be forced to decide if it's
> common across all machines that the BSP will service, or truly is
> specific to a particular machine.

  yes, i understand that, but is there a convention? i just want to
clarify that, in *this* case, there doesn't seem to be much value to
adding that extra directory level.

  and addressing martin's point, sure, if one includes the rpi layer
while building for another machine, it might make a difference, to
which i'd wonder, if you're building for a different machine, why are
you including the meta-rpi layer?

  from my perspective, it's a case of minimalism and being able to
explain stuff to students. if a student looked at that meta-rpi
netbase directory structure and asked why it was done that way, the
best answer i'd be able to give is that it's not essential but it
won't hurt anything, which sounds kind of lame. :-)

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

