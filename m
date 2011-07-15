Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 39C0A4C80A8C
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 05:47:50 -0500 (CDT)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1Qhfvx-0002yi-ED
	for yocto@yoctoproject.org; Fri, 15 Jul 2011 06:47:49 -0400
Date: Fri, 15 Jul 2011 06:47:44 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1107150616300.5001@localhost6.localdomain6>
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
Subject: when checksums collide -- the saga of linux-2.6.37.2.tar.bz2
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
X-List-Received-Date: Fri, 15 Jul 2011 10:47:50 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  while the problem has since gone away, something strange happened
yesterday i figured i'd share.

  as a quick test, wanted to build core-image-sato so started with:

  $ bitbake -c fetchall core-image-sato

just to grab everything and i'd start the build later.  but, as i
reported yesterday, fetch failed for two packages, one of them being
that linux tarball, linux-2.6.37.2.tar.bz2.

  being lazy, back off a bit and just go for a minimal image:

  $ bitbake -c fetchall core-image-minimal

unsurprisingly, the fetch for the linux tarball still failed for the
same reason as before -- incorrect checksums.  huh.  i typically don't
expect to see that in a simple fetch.  so check KERNELORG_MIRROR (http
site), *manually* download that tarball and, sure enough, its md5 and
sha256 sums are the (incorrect) ones that bitbake is reporting, which
don't match what's expected.  how odd.  (i verified this two
additional times, same result.)

  just as a test, i edited the bitbake.conf and changed
KERNELORG_MIRROR to refer to the kernel ftp site, cleared out the
remnants of that fetch, re-ran it and ... success!  huh?  so the
tarball via http is broken, but the one via ftp is good?  but it was
late, so i just threw up my hands and went to bed.

  this morning, manually download both tarballs (ftp and http), check
their sums and ... they match!  reset everything, go back to the
original http KERNELORG_MIRROR value and it's all good.  what the heck
was *that* all about?

  obviously, the fetch issue is now resolved but i'm baffled as to
what happened there.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

