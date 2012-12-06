Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED70BE0141C
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 13:59:46 -0800 (PST)
Received: from statdsl152.travel-net.com ([206.132.183.152]:55500
	helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TgjTu-0002Fi-3G
	for yocto@yoctoproject.org; Thu, 06 Dec 2012 16:59:46 -0500
Date: Thu, 6 Dec 2012 16:59:40 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1212061650350.4116@oneiric>
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
Subject: FILESEXTRAPATHS needs to be explained *way* better
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
X-List-Received-Date: Thu, 06 Dec 2012 21:59:47 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  first time digging into FILESPATH and .bbappend files, and i tested
the effect of setting something trivial to see what would happen:

FILESEXTRAPATHS_prepend := "rday"

did this for "netbase" in meta-ti layer, and checked the resulting
value of FILESPATH and (nicely formatted so you can read it), i got:

FILESPATH="rday/linux-gnueabi
rday/arm
rday/build-linux
rday/pn-netbase
rday/beagleboard
rday/omap3
rday/armv7a
rday/
rday/class-target
rday/forcevariable
rday/libc-glibc
rday/
/home/rpjday/OE/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/linux-gnueabi
/home/rpjday/OE/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/arm
/home/rpjday/OE/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/build-linux
/home/rpjday/OE/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/pn-netbase
... snip ...

  that is totally *not* what i expected given the explanation of that
variable in the current docs (unless i've missed it).  obviously,
FILESEXTRAPATHS doesn't just add individual directories to FILESPATH
-- it processes and adds based on OVERRIDES, which is fine but that's
not at all obvious.

  in addition, there is absolutely no need to add a ":" to the value
as the processing adds that for you, so the many, many examples of

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

is potentially confusing to folks reading the code.  (that trailing
":" doesn't hurt, but it has no value.)

  at what point is this variable explained in detail?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

