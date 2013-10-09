Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BC14E016AA
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2013 03:45:45 -0700 (PDT)
Received: from [174.115.226.96] (port=44181 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VTrGu-0006Xu-RY
	for yocto@yoctoproject.org; Wed, 09 Oct 2013 06:45:40 -0400
Date: Wed, 9 Oct 2013 06:45:36 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1310090638350.32355@oneiric>
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
Subject: clarification on what packages are *truly* needed for a yocto build?
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
X-List-Received-Date: Wed, 09 Oct 2013 10:45:46 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  (aside: prepping to teach an OE/yocto course in a couple weeks,
going thru the docs again, so be prepared for questions, some of them
potentially silly but all in aid of clarifying bits of documentation.
i'm sure scott rifenbark is currently steeling himself for the
experience. :-)

  i'm intimately aware of the current doc pages that list how to
establish your yocto build environment, such as this:

https://wiki.yoctoproject.org/wiki/Poky/GettingStarted/Dependencies

but a question or two.

  in some cases, i've seen, say, subversion listed as a prerequisite,
even though subversion is clearly built natively. so is it *truly* a
user-installable prerequisite? or am i misreading something?

  also, at this point, is there a list of what one can safely add to
ASSUME_PROVIDED to cut down build time on a new project? i recall from
way back when that, if you use ASSUME_PROVIDED, you're sort of voiding
the warranty in terms of what's been quality checked. but if one is
willing to take a chance, is there a set of packages that would be
considered "safe" to assume are provided? (for example, i would assume
that, in any current distro, git would certainly be safe, no?)

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

