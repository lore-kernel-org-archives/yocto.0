Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7A97E0078E; Sat, 30 Aug 2014 02:33:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp485.redcondor.net (smtp485.redcondor.net [208.80.204.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CB95E0034C
	for <yocto@yoctoproject.org>; Sat, 30 Aug 2014 02:33:25 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp485.redcondor.net ({3be039ea-4351-44b0-a8af-642c38b25916})
	via TCP (outbound) with ESMTPS id 20140830093306408
	for <yocto@yoctoproject.org>; Sat, 30 Aug 2014 09:33:06 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=37830 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XNf1p-0001gH-3U; Sat, 30 Aug 2014 05:33:01 -0400
Date: Sat, 30 Aug 2014 05:32:59 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Sven Ebenfeld <sven.ebenfeld@gmail.com>
In-Reply-To: <5400A8C8.4050605@gmail.com>
Message-ID: <alpine.LFD.2.11.1408300512120.8787@localhost>
References: <alpine.LFD.2.11.1408280336190.2292@localhost>
	<CAGiJk9dYKHaq3YTA6aAHBWkVH+gFqm+M=Rpi=80YhVZ0YNeWrA@mail.gmail.com>
	<alpine.LFD.2.11.1408280408050.2863@localhost>
	<CA+YB3rYra8atvtzy4JPz8zfc4WjbB-kM0rtb5ZdfRy48PFMO9g@mail.gmail.com>
	<alpine.LFD.2.11.1408290721080.4903@localhost>
	<CA+gsK-p1xVazx+guAy3Zo1nTrEVmnC3iMQVv9ZDoN28qhaKYKQ@mail.gmail.com>
	<alpine.LFD.2.11.1408291157030.10554@localhost>
	<5400A8C8.4050605@gmail.com>
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
Cc: yocto@yoctoproject.org
Subject: Re: is there a list of yocto-supported dev kits somewhere?
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
X-List-Received-Date: Sat, 30 Aug 2014 09:33:27 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 29 Aug 2014, Sven Ebenfeld wrote:

> Robert Nelson has a good collection for ARM-Devkits in his eewiki:
> https://eewiki.net/display/linuxonarm/Home Maybe that could be a
> good starting point.

  i agree, but i certainly don't think one needs to include *all* of
the kits robert is currently supporting, just the current ones. for
example, given the existence of the beaglebone black, i see no
pressing need to similarly document the earlier beaglebone (white) or
the beagleboard (unless one really, really, really wants to). after
all, if someone wants to get into YP and is looking for a starter dev
kit, the BBB would be the obvious preference over any of the earlier
beagle models.

  perhaps the various maintainers of the various layers can decide
which affordable dev kit would be a good representative for their
offerings. for intel, the minnowboard [max] would be a good candidate
and so on. the freescale folks could pick one or two -- the wandboard
seems a good choice here. others:

  * altera rocketboards:
http://www.rocketboards.org/foswiki/Documentation/GSRDGettingStartedYoctoCopyArrowSoCKitEdition

  * xilinx zynq:
http://www.wiki.xilinx.com/Yocto

  most of this stuff seems to be out there and working, it just needs
to be put into a simple list somewhere.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


