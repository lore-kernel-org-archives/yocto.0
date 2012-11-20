Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29F20E01438
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2012 13:08:52 -0800 (PST)
Received: from cpebcc8100fb8db-cmbcc8100fb8d8.cpe.net.cable.rogers.com
	([174.116.196.46]:38770 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1Tav3r-00026V-8X; Tue, 20 Nov 2012 16:08:51 -0500
Date: Tue, 20 Nov 2012 16:08:46 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <1353445350.7717.7.camel@empanada>
Message-ID: <alpine.DEB.2.02.1211201605110.30424@oneiric>
References: <alpine.DEB.2.02.1211201525020.27021@oneiric>
	<1353445350.7717.7.camel@empanada>
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
X-List-Received-Date: Tue, 20 Nov 2012 21:08:52 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 20 Nov 2012, Tom Zanussi wrote:

> On Tue, 2012-11-20 at 15:27 -0500, Robert P. J. Day wrote:
> > maybe it's something i'm doing, but oe-core just changed the SRC_URI
> > for kmod to git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git,
> > and the response from the URL couldn't suck any worse than if it
> > sucked totally.  i've yet to get a successful clone.
> >
> >   thoughts?  is that working fine for others?
> >
>
> No problems here:
>
> [trz@empanada tmp]$ time git clone git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git
> Cloning into 'kmod'...
> remote: Counting objects: 4003, done.
> remote: Compressing objects: 100% (1599/1599), done.
> remote: Total 4003 (delta 2811), reused 3196 (delta 2264)
> Receiving objects: 100% (4003/4003), 4.59 MiB | 850 KiB/s, done.
> Resolving deltas: 100% (2811/2811), done.
>
> real	0m7.183s
> user	0m0.361s
> sys	0m0.429s

  i can't explain it -- i've yet to have a successful clone from that
URL.  hangs partway through every time.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

