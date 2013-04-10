Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6F6CE014D0
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 09:20:53 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:38841 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UPxlU-0007Kf-9h
	for yocto@yoctoproject.org; Wed, 10 Apr 2013 12:20:52 -0400
Date: Wed, 10 Apr 2013 12:20:44 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1304101215110.26509@oneiric>
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
Subject: building a rootfs for a mips SEAD-3, and DEFAULTTUNE
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
X-List-Received-Date: Wed, 10 Apr 2013 16:20:53 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  my recent curiosity about MIPS was inspired by a former student
asking what it would take to build a root filesystem for the SEAD-3:

http://www.mips.com/products/development-kits/mips-sead-3/

  he'd already built for the routerstation pro and, according to him,
the fundamental difference is that rs pro defaults to big endian,
while the SEAD-3 is little endian. he already has u-boot and the
kernel, he just wanted to build a corresponding rootfs.

  after a *very* cursory glance at the layers, i suggested that it
looked like all he had to do was set:

  DEFAULTTUNE = "mips32el"

in his local.conf to override the default of "mips32" in the file
tune-mips32.inc.

  i'm quite prepared to be totally wrong about this, so if someone has
a better answer, i'm open to suggestions.

rday

p.s.  i was originally going to suggest the SEAD-3 as the next MIPS
board until he told me it cost $2K. ouch.

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

