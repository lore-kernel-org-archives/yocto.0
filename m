Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33B85E00C17; Thu,  3 Nov 2016 06:06:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43A15E00BB0
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 06:06:48 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 2699B68A01D; Thu,  3 Nov 2016 13:06:47 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 58C5668A019;
	Thu,  3 Nov 2016 13:06:44 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id C4DA767402DF;
	Thu,  3 Nov 2016 14:06:43 +0100 (CET)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <d3a15e96-ecd8-50c5-65e2-c13937d101ee@mlbassoc.com>
Date: Thu, 3 Nov 2016 14:06:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
Subject: Shallow git clones?
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
X-List-Received-Date: Thu, 03 Nov 2016 13:06:51 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I recall seeing some discussion in the past about using shallow
GIT clones when importing repositories?  Is this ever going to
happen?

The reason I ask is that I routinely save the GIT tarballs and
some of them are obscenely obese :-(  The worst of the bunch
is the device firmware for the RaspberryPi (as of today):
   -rw-rw-r-- 1 gthomas gthomas 6321877646 Nov  3 12:13 git2_github.com.raspberrypi.firmware.git.tar.gz

This particular tar file increased by more than 300MB since
the last time I downloaded it (only 2016-09-13!)  I routinely
slosh these files across the oceans (sometimes using tin cans
and strings it seems) and this can be very tedious.  Is there
anything that can be done to make these files a bit more manageable?

Note: the RaspberryPi files are not the only offenders.  Take
a look at the really big ones on my download mirror (~1GB or larger):
   912558047 Jun  3  2015 git2_git.yoctoproject.org.linux-yocto-3.14.git.tar.gz
   916869431 Sep 18 16:54 git2_git.yoctoproject.org.linux-yocto-4.4.git.tar.gz
   917066415 Mar  8  2011 chrome-11.0.686.0.tar.bz2
   929710560 Jun  5  2014 git2_git.yoctoproject.org.linux-yocto-3.10.git.tar.gz
   975438005 May 14  2015 git2_git.yoctoproject.org.linux-yocto-3.19.git.tar.gz
   997340641 Jan  4  2013 git2_dev.omapzoom.org.pub.scm.integration.kernel-ubuntu.git.tar.gz
  1013093794 Jul 22  2011 chrome-14.0.825.0.tar.bz2
  1097457194 Jul  9  2015 git2_github.com.Itseez.opencv.git.tar.gz
  1101241868 Jul 15 15:44 git2_git.freescale.com.ppc.sdk.linux.git.tar.gz
  1167801376 Oct 24  2013 git2_git.kernel.org.pub.scm.linux.kernel.git.stable.linux-stable.git.tar.gz
  1192994858 Nov 24  2014 git2_github.com.Freescale.linux-mainline.git.tar.gz
  1399737300 Mar 30  2010 git_git.kernel.org.pub.scm.linux.kernel.git.tmlind.linux-omap-2.6.git.tar.gz
  1455878541 Feb 22  2016 git2_github.com.Freescale.linux-fslc.git.tar.gz
  1637597724 Aug 11 09:45 git2_git.freescale.com.imx.linux-2.6-imx.git.tar.gz
  1785320074 Aug 15  2012 git2_github.com.mirrors.gcc.git.tar.gz
  1787717120 Oct 11 10:28 git2_git.ti.com.ti-linux-kernel.ti-linux-kernel.git.tar.gz
  2070939344 Nov  3 12:11 git2_github.com.raspberrypi.linux.git.tar.gz
  2478557202 Aug 10 11:47 git2_github.com.boundarydevices.linux-imx6.git.tar.gz
  2525826872 Jul 12 16:42 git2_github.com.gcc-mirror.gcc.tar.gz
  6321877646 Nov  3 12:13 git2_github.com.raspberrypi.firmware.git.tar.gz

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

