Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1865E00524; Sun, 13 Jul 2014 10:45:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 929A7E002A7
	for <yocto@yoctoproject.org>; Sun, 13 Jul 2014 10:45:00 -0700 (PDT)
Received: from [99.240.204.5] (port=41505 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1X6Npb-0008Lx-3v
	for yocto@yoctoproject.org; Sun, 13 Jul 2014 13:44:59 -0400
Date: Sun, 13 Jul 2014 13:44:53 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1407131341350.3800@localhost>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
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
Subject: inconsistent ways of setting IMAGE_FSTYPES
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
X-List-Received-Date: Sun, 13 Jul 2014 17:45:06 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  not a big deal, but just noticed the various formats for assigning
IMAGE_FSTYPES in the meta-yocto layer:

$ grep -r IMAGE_FSTYPES *
meta-yocto/conf/distro/poky-tiny.conf:IMAGE_FSTYPES = "ext2 cpio.gz"
meta-yocto-bsp/conf/machine/edgerouter.conf:IMAGE_FSTYPES ?= "jffs2 tar.bz2"
meta-yocto-bsp/conf/machine/beaglebone.conf:IMAGE_FSTYPES += "tar.bz2 jffs2"
meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf:IMAGE_FSTYPES ?= "jffs2 tar.bz2"
scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf:IMAGE_FSTYPES += "tar.bz2 jffs2"
scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf:IMAGE_FSTYPES ?= "jffs2 tar.bz2"
$

  just seems a bit odd for those assignments to be bouncing around
between =, += and ?=.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

