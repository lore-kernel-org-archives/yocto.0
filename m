Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 979B7E00715
	for <yocto@yoctoproject.org>; Sun,  7 Jul 2013 12:11:38 -0700 (PDT)
Received: from [174.115.5.73] (port=60813 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UvuMz-0005e0-Ur
	for yocto@yoctoproject.org; Sun, 07 Jul 2013 15:11:38 -0400
Date: Sun, 7 Jul 2013 15:11:33 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1307071507120.30670@oneiric>
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
Subject: possible variations on building bootable SD card for BBB?
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
X-List-Received-Date: Sun, 07 Jul 2013 19:11:39 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  i'm currently working on (and documenting) the variations for
building a minimal, bootable SD card for the beaglebone black (BBB)
for upcoming embedded linux classes, so i'm curious as to what others
are doing.

  for the last while, i've been using the layers:

  * oe-core (naturally)
  * meta-oe
  * meta-beagleboard

with which i could generate all the appropriate artifacts and manually
populate an SD card.

  recent perusal suggests that i should be using the "official"
meta-ti layer rather than meta-beagleboard but if i do that and try to
populate a formatted SD card the same way, i don't even get to the
u-boot prompt.

  so -- short form of the question -- how many ways are there to build
a bootable SD card for the BBB using different layers? which are
recommended? i'm after just enough of a system to act as the basis for
some classes, so i'm currently building just a core-image-minimal, but
i'm interested in what others are doing, thanks.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

