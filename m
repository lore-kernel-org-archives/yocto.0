Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 289E3E014D5
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2013 10:34:19 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:39033 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UUh6g-00020K-4U
	for yocto@yoctoproject.org; Tue, 23 Apr 2013 13:34:18 -0400
Date: Tue, 23 Apr 2013 13:34:16 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1304231327020.23042@oneiric>
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
Subject: should i have known about "use-kernel-config"?
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
X-List-Received-Date: Tue, 23 Apr 2013 17:34:19 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  condensed version: i want to define a new machine for the MIPS
SEAD3, which is 32-bit, little endian, and it seemed pretty
straightforward, using the routerstation pro as a starting point and
making the appropriate tweaks.

  i chose to base off of linux-yocto-3.8, and chose the
standard/mti-malta32 branch, then wanted to make sure i had an
appropriate defconfig. turns out there *is* a
arch/mips/configs/sead3_defconfig file in that branch, with exactly
the two settings i cared most about right at the top:

CONFIG_MIPS_SEAD3=y
CONFIG_CPU_LITTLE_ENDIAN=y

so all i wanted was to say, "use *that* as the defconfig", but i saw
nothing in the kernel guide that explained how until i tripped over
this in one of the meta-arago defconfig files:

use-kernel-config=am335x_evm_defconfig

  does that do what i *think* it does? because it's certainly not
mentioned anywhere in the yocto docs.  and it's kind of handy.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

