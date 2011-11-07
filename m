Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85167E00307
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2011 09:45:10 -0800 (PST)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1RNTFs-0008RP-IZ; Mon, 07 Nov 2011 12:45:08 -0500
Date: Mon, 7 Nov 2011 12:45:04 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <28713377.p70T57MiQS@helios>
Message-ID: <alpine.DEB.2.02.1111071244500.30638@localhost6.localdomain6>
References: <alpine.DEB.2.02.1111071232470.20844@localhost6.localdomain6>
	<28713377.p70T57MiQS@helios>
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
Subject: Re: [PATCH] Add Atom PC to list of core supported machines in README.hardware
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
X-List-Received-Date: Mon, 07 Nov 2011 17:45:10 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 7 Nov 2011, Paul Eggleton wrote:

> On Monday 07 November 2011 12:35:02 Robert P. J. Day wrote:
> > Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> >
> > ---
> >
> >   all of the atom pc info is already in that file, all that was
> > missing was the entry for it in the early list.
> >
> > diff --git a/README.hardware b/README.hardware
> > index d4f7b47..462e6d1 100644
> > --- a/README.hardware
> > +++ b/README.hardware
> > @@ -39,6 +39,7 @@ Hardware Reference Boards
> >
> >  The following boards are supported by Poky's core layer:
> >
> > +  * Intel Atom PC (atom-pc)
> >    * Texas Instruments Beagleboard (beagleboard)
> >    * Freescale MPC8315E-RDB (mpc8315e-rdb)
> >    * Ubiquiti Networks RouterStation Pro (routerstationpro)
>
> atom-pc is already listed in the section underneath ("consumer devices").

  oh, crap, you're right.  sorry.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

