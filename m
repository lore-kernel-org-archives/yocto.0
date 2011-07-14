Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 483834C801FA
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 04:46:55 -0500 (CDT)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1QhIVR-0001NL-OE; Thu, 14 Jul 2011 05:46:54 -0400
Date: Thu, 14 Jul 2011 05:46:47 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4E1E627B.80801@linux.intel.com>
Message-ID: <alpine.DEB.2.02.1107140544380.3506@localhost6.localdomain6>
References: <alpine.DEB.2.02.1107130653460.4203@localhost6.localdomain6>
	<1310597317.2270.4.camel@scimitar> <4E1E627B.80801@linux.intel.com>
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
X-List-Received-Date: Thu, 14 Jul 2011 09:46:55 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 13 Jul 2011, Darren Hart wrote:

> On 07/13/2011 03:48 PM, Joshua Lock wrote:
> > On Wed, 2011-07-13 at 06:57 -0400, Robert P. J. Day wrote:
> >> just perusing the documentation in my typically pedantic fashion and
> >> a couple questions about style.  first, is the proper spelling
> >> "Bitbake" or "BitBake" since the doc source seems to bounce back and
> >> forth and it really should be consistent.
> >
> > I believe it's the latter, at least that's what I've always use.
> >
>
> Agreed:
>
> The man page:
> BitBake - simple tool for the execution of tasks
>
> The user manual:
> BitBake User Manual
>
> Those seem like the two lines of documentation that are most likely to
> be correct :-) So unless Richard or Chris pipe up, I'd go with BitBake.

  i thought as much, i'm going with that.  not high on any list of
priorities but while i'm perusing the docs, i might as well make notes
of what can change, and submit patches for the more obvious stuff.

  are the small changes i've posted here in acceptable format?  do
they get ACKed at some point so i can verify they were accepted?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

