Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5D1AE012F3
	for <yocto@yoctoproject.org>; Sun, 30 Oct 2011 07:34:13 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.2.77] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1RKWSh-0000qx-Tb
	for yocto@yoctoproject.org; Sun, 30 Oct 2011 10:34:12 -0400
Date: Sun, 30 Oct 2011 10:34:03 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1110301030050.32341@localhost6.localdomain6>
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
Subject: couple questions about cleaning up the Quick Start Guide
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
X-List-Received-Date: Sun, 30 Oct 2011 14:34:14 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  perusing the QS guide in prep for giving a yocto talk this week to
my local LUG and some cosmetic changes i can submit a patch for:

1) www.yoctoproject.org/downloads clearly redirects to
   downloads.yoctoproject.org/releases these days.  any objection
   to my just changing the former references to the latter throughout
   the QS guide?

2) there's a reference to the edison tarball

http://www.yoctoproject.org/downloads/poky/poky-edison-6.0.tar.bz2

   but there's no such tarball, it's at

http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/poky-edison-6.0.tar.bz2

  although *older* tarballs are under the "downloads" directory.
what's the proper directory location for this stuff?  can it be made
consistent?  thanks.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

