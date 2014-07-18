Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 704CEE003FA; Fri, 18 Jul 2014 12:09:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.204.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp484.redcondor.net (smtp484.redcondor.net [208.80.204.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1384E00342
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 12:09:55 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20140718190953884
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 19:09:53 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=50059 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1X8DXQ-0002AF-Hq
	for yocto@yoctoproject.org; Fri, 18 Jul 2014 15:09:48 -0400
Date: Fri, 18 Jul 2014 15:09:45 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1407181505290.11069@localhost>
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
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: does/should the kernel dev manual explain FILESOVERRIDES?
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
X-List-Received-Date: Fri, 18 Jul 2014 19:09:59 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1635230442-1405710588=:11069"

--8323328-1635230442-1405710588=:11069
Content-Type: TEXT/PLAIN; charset=KOI8-R
Content-Transfer-Encoding: 8BIT


  currently perusing the yocto kernel dev guide -- nowhere near
finished but a quick search shows no mention of the use of OVERRIDES
in the context of FILESEXTRAPATHS, which i think is potentially
useful. i think that's covered in the dev manual, but i don't think it
would hurt to repeat it in the kernel manual specifically for kernel
work.

  as a live example, i've been perusing the meta-fsl-arm layer, and
here's a sample kernel recipe directory layout:

[linux-imx-2.6.35.3]$ tree
.
ÜÄÄ imx23evk
Åöö ÑÄÄ defconfig
ÜÄÄ imx28evk
Åöö ÑÄÄ defconfig
ÜÄÄ mx5
Åöö ÑÄÄ defconfig
ÜÄÄ mxs-duart-use-ttyAMA-for-device-name.patch
ÑÄÄ perf-avoid-use-sysroot-headers.patch

  i think throwing in an example like that would be useful.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-1635230442-1405710588=:11069--
