Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id B1B134C803E4
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 05:02:18 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6EA2AOO006744;
	Thu, 14 Jul 2011 11:02:10 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 05176-09; Thu, 14 Jul 2011 11:02:06 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6EA21Wr006738
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 14 Jul 2011 11:02:01 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <alpine.DEB.2.02.1107140544380.3506@localhost6.localdomain6>
References: <alpine.DEB.2.02.1107130653460.4203@localhost6.localdomain6>
	<1310597317.2270.4.camel@scimitar> <4E1E627B.80801@linux.intel.com>
	<alpine.DEB.2.02.1107140544380.3506@localhost6.localdomain6>
Date: Thu, 14 Jul 2011 11:01:58 +0100
Message-ID: <1310637718.20015.1137.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: Re: docs: how to spell "bitbake", and docbook semantic markup for user input
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
X-List-Received-Date: Thu, 14 Jul 2011 10:02:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-07-14 at 05:46 -0400, Robert P. J. Day wrote:
> On Wed, 13 Jul 2011, Darren Hart wrote:
> 
> > On 07/13/2011 03:48 PM, Joshua Lock wrote:
> > > On Wed, 2011-07-13 at 06:57 -0400, Robert P. J. Day wrote:
> > >> just perusing the documentation in my typically pedantic fashion and
> > >> a couple questions about style.  first, is the proper spelling
> > >> "Bitbake" or "BitBake" since the doc source seems to bounce back and
> > >> forth and it really should be consistent.
> > >
> > > I believe it's the latter, at least that's what I've always use.
> > >
> >
> > Agreed:
> >
> > The man page:
> > BitBake - simple tool for the execution of tasks
> >
> > The user manual:
> > BitBake User Manual
> >
> > Those seem like the two lines of documentation that are most likely to
> > be correct :-) So unless Richard or Chris pipe up, I'd go with BitBake.
> 
>   i thought as much, i'm going with that.  not high on any list of
> priorities but while i'm perusing the docs, i might as well make notes
> of what can change, and submit patches for the more obvious stuff.
> 
>   are the small changes i've posted here in acceptable format?  do
> they get ACKed at some point so i can verify they were accepted?

The pieces in poky's documentation directory are part of the yocto-docs
repo which is maintained by Scott (cc'd). Scott is a tech writer rather
than a developer and loves git, er, I mean we might need to help him get
the patches in ;-). Please do send them and we'll figure that bit out
though and will send an acknowledgement when they're merged.

Cheers,

Richard


