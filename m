Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B48BE0141C
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 14:32:48 -0800 (PST)
Received: from statdsl152.travel-net.com ([206.132.183.152]:55864
	helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Tgjzq-0004GT-OL; Thu, 06 Dec 2012 17:32:46 -0500
Date: Thu, 6 Dec 2012 17:32:43 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Chris Larson <clarson@kergoth.com>
In-Reply-To: <CABcZAN=JuymHBYdL8kZUjcYjScfjKAJwYJibP6R=7Xkto1Gh1g@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1212061731550.4523@oneiric>
References: <alpine.DEB.2.02.1212061650350.4116@oneiric>
	<CABcZAN=JuymHBYdL8kZUjcYjScfjKAJwYJibP6R=7Xkto1Gh1g@mail.gmail.com>
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
X-List-Received-Date: Thu, 06 Dec 2012 22:32:48 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-2132062028-1354833166=:4523"

--8323329-2132062028-1354833166=:4523
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Thu, 6 Dec 2012, Chris Larson wrote:

>
>
> On Thu, Dec 6, 2012 at 2:59 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>         in addition, there is absolutely no need to add a ":" to the value
>       as the processing adds that for you, so the many, many examples of
>
>       FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>
>       is potentially confusing to folks reading the code.  (that trailing
>       ":" doesn't hurt, but it has no value.)
>
>
> This is wrong. You only don't need the leading : if FILESEXTRAPATHS
> was empty to begin with, which is only the case if that is the first
> and only bbappend adding to it. As soon as you get more than one,
> you'll end up with concatenated values and no separator.

  i'm confused, not sure what this means.  what is the *proper* usage
of that variable?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323329-2132062028-1354833166=:4523--
