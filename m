Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3EDFE01423
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2012 13:30:27 -0800 (PST)
Received: from statdsl152.travel-net.com ([206.132.183.152]:40561
	helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1TavOj-0002sH-38; Tue, 20 Nov 2012 16:30:25 -0500
Date: Tue, 20 Nov 2012 16:30:22 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <50ABF2B7.8060006@mlbassoc.com>
Message-ID: <alpine.DEB.2.02.1211201629080.3394@oneiric>
References: <alpine.DEB.2.02.1211201525020.27021@oneiric>
	<1353445350.7717.7.camel@empanada>
	<alpine.DEB.2.02.1211201605110.30424@oneiric>
	<50ABF2B7.8060006@mlbassoc.com>
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
Subject: Re: is anyone getting pathetic git download from the new kmod SRC_URI?
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
X-List-Received-Date: Tue, 20 Nov 2012 21:30:27 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 20 Nov 2012, Gary Thomas wrote:

> On 2012-11-20 14:08, Robert P. J. Day wrote:
> > On Tue, 20 Nov 2012, Tom Zanussi wrote:
> >
> > > On Tue, 2012-11-20 at 15:27 -0500, Robert P. J. Day wrote:
> > > > maybe it's something i'm doing, but oe-core just changed the SRC_URI
> > > > for kmod to git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git,
> > > > and the response from the URL couldn't suck any worse than if it
> > > > sucked totally.  i've yet to get a successful clone.
> > > >
> > > >    thoughts?  is that working fine for others?
> > > >
> > >
> > > No problems here:
> > >
> > > [trz@empanada tmp]$ time git clone
> > > git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git
> > > Cloning into 'kmod'...
> > > remote: Counting objects: 4003, done.
> > > remote: Compressing objects: 100% (1599/1599), done.
> > > remote: Total 4003 (delta 2811), reused 3196 (delta 2264)
> > > Receiving objects: 100% (4003/4003), 4.59 MiB | 850 KiB/s, done.
> > > Resolving deltas: 100% (2811/2811), done.
> > >
> > > real	0m7.183s
> > > user	0m0.361s
> > > sys	0m0.429s
> >
> >    i can't explain it -- i've yet to have a successful clone from that
> > URL.  hangs partway through every time.
>
> Maybe it's a routing thing - where are you located?
>
> n.b. it just worked for me - in about the same <10 seconds

  left where i was, tried again sitting at the bar with a pint of
dutch pilsner, and it worked fine.  i'm sure it's the pilsner.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

