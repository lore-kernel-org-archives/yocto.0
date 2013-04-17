Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1935BE01487
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 15:30:22 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:34549 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1USarq-0007Ak-2w; Wed, 17 Apr 2013 18:30:18 -0400
Date: Wed, 17 Apr 2013 18:30:14 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Trevor Woerner <twoerner@gmail.com>
In-Reply-To: <CAHUNapRQdV5hM8rMrChYD4joa1N0eN9iok6+C4UU07AaJv04Zg@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1304171827100.5134@oneiric>
References: <alpine.DEB.2.02.1304171022430.10912@oneiric>
	<2155264.hXQStR7GGJ@helios> <516EBBE7.8060201@mlbassoc.com>
	<CAHUNapRQdV5hM8rMrChYD4joa1N0eN9iok6+C4UU07AaJv04Zg@mail.gmail.com>
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
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: writeup on the mechanics of FILESEXTRAPATHS and bbappend files
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
X-List-Received-Date: Wed, 17 Apr 2013 22:30:22 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 17 Apr 2013, Trevor Woerner wrote:

> On Wed, Apr 17, 2013 at 11:12 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> > I also think it would be good to point out the use of := in the
> > FILESEXTRAPATHS assignment and why it's important.
>
> Knowing that the := operator will put your directories first

  whoa, i'm not sure i'd phrase it *that* way but i know what you're
getting at.

> is only useful if you also know that the underlying mechanism will
> take the first such files from the given directories it encounters
> :-) What's to say bitbake doesn't look at all the directories/files
> and take the last ones?

  ok, so i should add that it's left-to-right parsing? fair enough.
although i suspect most people would just *assume* that but it's
always better to be explicit.

  at the moment, i'm more interested in egregious errors in my
explanation. again, i don't think FILESEXTRAPATHS is explained in
sufficient detail to prevent newbies from getting confused and into
real trouble.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

