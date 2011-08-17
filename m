Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23331E01211
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2011 14:02:00 -0700 (PDT)
Received: from [216.123.155.199] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1QtnFY-0000Ua-MG
	for yocto@yoctoproject.org; Wed, 17 Aug 2011 17:02:10 -0400
Date: Wed, 17 Aug 2011 17:01:32 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1108171656380.8101@localhost6.localdomain6>
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
Subject: setting preferred provider for "virtual/libx11"?
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
X-List-Received-Date: Wed, 17 Aug 2011 21:02:00 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  with latest poky git pull, did "bitbake -c fetchall world" just for
fun and got:

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
ERROR: Multiple .bb files are due to be built which each provide
virtual/libx11
(/home/rpjday/yocto/poky.git/meta/recipes-graphics/xorg-lib/libx11-trim_1.3.4.bb
/home/rpjday/yocto/poky.git/meta/recipes-graphics/xorg-lib/libx11_1.3.4.bb).
 This usually means one provides something the other doesn't and
should.
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 1359 tasks of which 1359 didn't need to
be rerun and 0 failed.

  i'm *assuming* that, since both of those .bb files pull in
libx11.inc, this is the offending line from that libx11.inc file:

PROVIDES = "virtual/libx11"

and that (as saul just explained to me before his linuxcon talk
starts), what is needed is a PREFERRED_PROVIDER for this virtual
package to distinguish between them, correct?

  i can see several directives throughout the tree:

PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"

but, obviously(?), there's none being included in my specific example
of doing a fetchall for world.  feel free to explain why i have no
idea what i'm talking about.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

