Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72805E006C9
	for <yocto@yoctoproject.org>; Fri,  7 Dec 2012 06:05:36 -0800 (PST)
Received: from cpebcc81008dd2c-cmbcc81008dd29.cpe.net.cable.rogers.com
	([99.253.156.71]:44192 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TgyYZ-0003vw-AW; Fri, 07 Dec 2012 09:05:35 -0500
Date: Fri, 7 Dec 2012 09:05:32 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <5235127.r6SHoQ9lR8@helios>
Message-ID: <alpine.DEB.2.02.1212070903460.6886@oneiric>
References: <alpine.DEB.2.02.1212061650350.4116@oneiric>
	<CABcZANk525GkR-T=6OLvpac4p8gwQ8hG-oEEaZU7RC+5nu2JZw@mail.gmail.com>
	<alpine.DEB.2.02.1212070744340.5574@oneiric>
	<5235127.r6SHoQ9lR8@helios>
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
Subject: Re: FILESEXTRAPATHS needs to be explained *way* better
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
X-List-Received-Date: Fri, 07 Dec 2012 14:05:36 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 7 Dec 2012, Paul Eggleton wrote:

> On Friday 07 December 2012 08:04:58 Robert P. J. Day wrote:
> >
> >   i find the current, widespread usage of this form (with the colon):
> >
> > FILESEXTRAPATHS_prepend := "${THISDIR}/patches:"
> >
> > potentially misleading since people reading the .bbappend file will
> > (quite naturally) assume that, hey, that must represent a literal
> > prepend since it includes the colon.
>
> It *is* a literal prepend - to FILESEXTRAPATHS. In your discussion
> above you are conflating FILESPATH with FILESEXTRAPATHS. The former
> is constructed based on the latter in conjuction with OVERRIDES;
> they are not the same variable.

  ok, i think i finally clued in here, thanks.  i was fixated on the
processing when only *one* bbappend file was involved, i didn't think
to back up another level.

  my bad.  apologies.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

