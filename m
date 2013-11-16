Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48990E015EF
	for <yocto@yoctoproject.org>; Sat, 16 Nov 2013 00:19:46 -0800 (PST)
Received: from [173.34.6.101] (port=52727 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Vhb6X-0001HN-5g; Sat, 16 Nov 2013 03:19:45 -0500
Date: Sat, 16 Nov 2013 03:19:35 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: "Burton, Ross" <ross.burton@intel.com>
In-Reply-To: <CAJTo0LbYcXDDguCiVtun5qMUAgL=VxqhoHVjHKhRCdu8t4M2gw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1311160309110.6616@oneiric>
References: <alpine.DEB.2.02.1311150538110.30641@oneiric>
	<CAJTo0LbYcXDDguCiVtun5qMUAgL=VxqhoHVjHKhRCdu8t4M2gw@mail.gmail.com>
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
Subject: Re: undocumented MACHINE_FEATURES, and what makes something a MACHINE feature?
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
X-List-Received-Date: Sat, 16 Nov 2013 08:19:49 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 15 Nov 2013, Burton, Ross wrote:

> On 15 November 2013 10:49, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >   as you can see, the only tests for 'wifi' involve either
> > DISTRO_FEATURES or COMBINED_FEATURES, *not* MACHINE_FEATURES
> > individually. under the circumstances, then, can 'wifi' be considered
> > a legitimate MACHINE feature if it's never being tested in that
> > context? (the same can be said for 'bluetooth', by the way.)
>
> COMBINED_FEATURES is a union of MACHINE_ and DISTRO_FEATURES, ...

  i understand that part, but i'm still not convinced by the rest of
your argument, so let me walk through an example if i might. (it could
be that i'm massively overthinking this, but i've never been scared
about making an idiot of myself in the past so ...)

> so it does make sense for them to be listed as MACHINE_FEATURES as
> otherwise they can't be combined...  No point building wifi in the
> distro if the machine doesn't support it, and the machine supporting
> wifi isn't a reason to enable it in the distro.

  i (sort of) see your point, so let me use bluetooth as an example.
the ref manual currently lists bluetooth as both a valid DISTRO
feature and MACHINE feature so, AIUI, those two settings mean two
different things:

* MACHINE_FEATURES including bluetooth means that that machine has
actual integrated bluetooth, while
* DISTRO_FEATURES including bluetooth specifies that you *wish* to
include bluetooth software support in that distro

  so far, so good. but if i scan the entire dora source tree, the only
tests i see for the bluetooth "feature" are either checking
DISTRO_FEATURES or COMBINED_FEATURES, *none* checking MACHINE_FEATURES
specifically, and this strikes me as odd. i'm puzzled by the idea of
something being a valid MACHINE feature if nothing ever checks for
that.

  it seems like that leaves open the possibility of someone selecting
a DISTRO_FEATURES of bluetooth for a machine that doesn't even have
it. is that possible? does it make sense? am i just missing something
fundamental here?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

