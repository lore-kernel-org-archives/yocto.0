Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9A2AE0055C
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2013 06:17:24 -0800 (PST)
Received: from [69.196.158.250] (port=45171 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Vj8ao-00016k-Mz; Wed, 20 Nov 2013 09:17:22 -0500
Date: Wed, 20 Nov 2013 09:17:20 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: "Burton, Ross" <ross.burton@intel.com>
In-Reply-To: <CAJTo0LbYcXDDguCiVtun5qMUAgL=VxqhoHVjHKhRCdu8t4M2gw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1311200913170.8027@oneiric>
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
X-List-Received-Date: Wed, 20 Nov 2013 14:17:27 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 15 Nov 2013, Burton, Ross wrote:

> On 15 November 2013 10:49, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >   as you can see, the only tests for 'wifi' involve either
> > DISTRO_FEATURES or COMBINED_FEATURES, *not* MACHINE_FEATURES
> > individually. under the circumstances, then, can 'wifi' be
> > considered a legitimate MACHINE feature if it's never being tested
> > in that context? (the same can be said for 'bluetooth', by the
> > way.)
>
> COMBINED_FEATURES is a union of MACHINE_ and DISTRO_FEATURES, so it
> does make sense for them to be listed as MACHINE_FEATURES as
> otherwise they can't be combined...  No point building wifi in the
> distro if the machine doesn't support it, and the machine supporting
> wifi isn't a reason to enable it in the distro.

  in order to identify missing entries from the list of
MACHINE_FEATURES here:

http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#ref-features-machine

i did a few quick grep's and wrote up the results here:

  http://www.crashcourse.ca/wiki/index.php/OE#MACHINE_FEATURES

in short, there *appear* to be a number of valid machine features that
could be added to the ref manual page, but the last few are a bit
puzzling and i wouldn't know how to write them up, but i'll let
someone else make that call.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

