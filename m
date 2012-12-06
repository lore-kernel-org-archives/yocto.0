Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3C45E00655
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 15:16:28 -0800 (PST)
Received: from statdsl152.travel-net.com ([206.132.183.152]:53090
	helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Tgkg7-0005pN-UB; Thu, 06 Dec 2012 18:16:28 -0500
Date: Thu, 6 Dec 2012 18:16:24 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Chris Larson <clarson@kergoth.com>
In-Reply-To: <CABcZANkhN-Nx_TfeRDnt2+96HtAwyb_Lp-fM7GBkKWs=a0Ad8A@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1212061812580.3304@oneiric>
References: <alpine.DEB.2.02.1212061650350.4116@oneiric>
	<CABcZAN=JuymHBYdL8kZUjcYjScfjKAJwYJibP6R=7Xkto1Gh1g@mail.gmail.com>
	<alpine.DEB.2.02.1212061731550.4523@oneiric>
	<CABcZANkhN-Nx_TfeRDnt2+96HtAwyb_Lp-fM7GBkKWs=a0Ad8A@mail.gmail.com>
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
X-List-Received-Date: Thu, 06 Dec 2012 23:16:29 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-650939725-1354835788=:3304"

--8323329-650939725-1354835788=:3304
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Thu, 6 Dec 2012, Chris Larson wrote:

>
>
> On Thu, Dec 6, 2012 at 3:32 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>       On Thu, 6 Dec 2012, Chris Larson wrote:
>
>       >
>       >
>       > On Thu, Dec 6, 2012 at 2:59 PM, Robert P. J. Day <rpjday@crashcourse.ca>
>       wrote:
>       >         in addition, there is absolutely no need to add a ":" to the value
>       >       as the processing adds that for you, so the many, many examples of
>       >
>       >       FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>       >
>       >       is potentially confusing to folks reading the code.  (that trailing
>       >       ":" doesn't hurt, but it has no value.)
>       >
>       >
>       > This is wrong. You only don't need the leading : if FILESEXTRAPATHS
>       > was empty to begin with, which is only the case if that is the first
>       > and only bbappend adding to it. As soon as you get more than one,
>       > you'll end up with concatenated values and no separator.
>
>   i'm confused, not sure what this means.  what is the *proper* usage
> of that variable?
>
>
> As I'm pretty sure you've already been told in one of the other 2
> threads about this, it's a colon separated list of paths. If you go
> appending to it without a separator, you're going to end up with
> something useless.
>
> layer1/.../foo.bbappend
> FILESEXTRAPATHS_prepend = "${THISDIR}/foo"
>
> layer2/.../foo.bbappend
> FILESEXTRAPATHS_prepend = "${THISDIR}/bar"
>
> resulting FILESEXTRAPATHS: layer1/.../foo/layer2/.../bar

  ok, that's just silly (but that could be the 9% quebec beer
talking).  if i'm working with just one layer, then this:

FILESEXTRAPATHS_prepend := "rday"

works fine:

FILESPATH="rday/linux-gnueabi:rday/arm:rday/build-linux:rday/pn-netbase:...

if that fails with more than one layer, then that is, quite simply,
asinine.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323329-650939725-1354835788=:3304--
