Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 64DF04C8007E
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 09:31:35 -0500 (CDT)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1QhjQU-00088e-Fy; Fri, 15 Jul 2011 10:31:34 -0400
Date: Fri, 15 Jul 2011 10:31:23 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Richard Purdie <richard.purdie@linuxfoundation.org>
In-Reply-To: <1310739913.20015.1243.camel@rex>
Message-ID: <alpine.DEB.2.02.1107151031150.28573@localhost6.localdomain6>
References: <alpine.DEB.2.02.1107151010270.1923@localhost6.localdomain6>
	<1310739913.20015.1243.camel@rex>
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
Subject: Re: couple questions about toolchains from QS manual
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
X-List-Received-Date: Fri, 15 Jul 2011 14:31:35 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 15 Jul 2011, Richard Purdie wrote:

> On Fri, 2011-07-15 at 10:15 -0400, Robert P. J. Day wrote:
> > (look on the bright side -- eventually, after many, many patches, i
> > will have nothing left to whine about.)
>
> :)
>
> >   from quick start manual, i notice that all toolchain tarballs have
> > "sdk" in the filename, whereas the actual downloads have "gmae".  a
> > simple textual fix, i'm assuming.  (what means "gmae"?)
>
> GMAE = GNOME Mobile and Embedded
>
> think cut down GNOME.

  ah, of course.

> >   more significantly, QS manual states that toolchains "should" be
> > installed under /opt/poky.  "should" is a loaded word -- it
> > implies a recommendation for some benefit but not an actual
> > requirement.  and installing it there requires the reader to have
> > root privilege, something to be avoided if at all possible.
> >
> >   can someone clarify the "shouldness" or "mustness" of toolchain
> > installation under /opt/poky?
>
> At this point its a requirement, we'd like to relax that but it
> isn't possible right now.

  ok, then that sentence should simply be reworded to make it clear
that it's not optional and root privilege is required.  patch to
follow shortly.

rday

