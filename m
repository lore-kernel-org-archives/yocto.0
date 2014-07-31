Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DCABE00572; Thu, 31 Jul 2014 09:52:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.204.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp486.redcondor.net (smtp486.redcondor.net [208.80.204.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31643E004E0
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 09:51:56 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20140731165154133
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 16:51:54 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=55733 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XCta0-0005Cf-UB; Thu, 31 Jul 2014 12:51:48 -0400
Date: Thu, 31 Jul 2014 12:51:45 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FD15F5@ORSMSX101.amr.corp.intel.com>
Message-ID: <alpine.LFD.2.11.1407311234570.12848@localhost>
References: <alpine.LFD.2.11.1407301522260.30037@localhost>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FD15B5@ORSMSX101.amr.corp.intel.com>
	<CAMKF1sqyPbb1-oe23zZ0Rpm31Oxn9pz+yPDDsD_j10h4h2K1FA@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FD15F5@ORSMSX101.amr.corp.intel.com>
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
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: why does dev manual, "Supported Board Support Packages", mention only meta-intel?
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
X-List-Received-Date: Thu, 31 Jul 2014 16:52:01 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


(SIDE NOTE: i'm being this picky since i want to use these manuals
straight out as training material, so i want them to be precise and
accurate.)

On Thu, 31 Jul 2014, Rifenbark, Scott M wrote:

> Yes - that is what I meant by fixing it up to be less-restrictive.
> I need to find out some stuff on BSPs in general and then I will get
> to it.

  looking at that entire section 2.2 in the dev manual ("Getting Set
Up"), it might be worth stepping back and asking what that section is
meant to accomplish -- one would think, listing the really basic stuff
one needs to, say, build their first image.

  with that in mind, the list in that section seems a bit odd in
places, and a couple other notes about it.

  first, "You should also have about 50 Gbytes of free disk space for
building images" seems a bit, um, harsh. you can build an entire
bootable qemuarm image in less than 16G, so scaring the reader by
mentioning 50G seems slightly extreme.

  next, given that first-time users are probably going to just go with
the kernel provided and configured for their machine of choice, it's
not clear that that section needs to get into checking out a kernel
manually, or mentioning meta-yocto-kernel-extras. but that's just me.

  finally, about BSPs, i'm not sure what that section needs to say at
this point beyond, "depending on what MACHINE you're building for, you
may need to manually check out the specific BSP layer for that
machine," then just point the reader at the layers page.

  it might be sufficient to say something like:

  "in terms of BSPs, you will already have support for a number of
machines. OE provides support for a number of QEMU images, while the
yocto layer adds support for five 'reference' boards [LIST THEM].
beyond that, you will need to locate and download the BSP layer for
the machine you want."

  if you truly want to give an example of downloading a BSP layer,
pick a *simple* one -- i always use meta-raspberrypi since it is a
single checkout that defines a single machine. with all due respect,
using meta-intel as an example is probably the worst choice in that it
is a single checkout that is a layer, with numerous sublayers as part
of the checkout, and do you really want to get into that?

  anyway, i would keep that entire section as simple as possible, and
refer readers to the more advanced sections in other manuals.

  movin' on ...

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================



