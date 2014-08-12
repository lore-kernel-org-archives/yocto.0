Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBC8BE007AD; Tue, 12 Aug 2014 05:27:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [208.80.206.85 listed in list.dnswl.org]
Received: from smtp685.redcondor.net (smtp685.redcondor.net [208.80.206.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 716BFE00796
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 05:27:53 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp685.redcondor.net ({20c8e40f-6b6c-4c9e-abff-1640ea7bf404})
	via TCP (outbound) with ESMTPS id 20140812122751574
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 12:27:51 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=37012 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XHBB6-0005Dp-US; Tue, 12 Aug 2014 08:27:48 -0400
Date: Tue, 12 Aug 2014 08:27:46 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Richard Leitner <richard.leitner@skidata.com>
In-Reply-To: <20140812142043.31d6766f@lxbuild.skidata.net>
Message-ID: <alpine.LFD.2.11.1408120827190.21762@localhost>
References: <20140812142043.31d6766f@lxbuild.skidata.net>
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
Subject: Re: Force recipe to provide specific file
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
X-List-Received-Date: Tue, 12 Aug 2014 12:27:57 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 12 Aug 2014, Richard Leitner wrote:

> Hello folks,
> is there a possibility to force a recipe to provide a specific file?
>
> My problem is that my own recipe is providing a file which is already provided
> by another recipe. I don't want to change that other recipe and the rootfs
> should include both package but only the specified file from my package.
>
> The following message is produced by bitbake:
>
> WARNING: The recipe ghostscript is trying to install files into a shared area
> when those files already exist. Those files and their manifest location are:
>    /opt/yocto/poky/build_2.2/tmp/sysroots/board/usr/lib/cups/filter/gstopxl
>    Matched in manifest-board-cups-filters.populate_sysroot
>    /opt/yocto/poky/build_2.2/tmp/sysroots/board/usr/lib/cups/filter/gstoraster
>    Matched in manifest-board-cups-filters.populate_sysroot
> Please verify which package should provide the above files.
>
> The only solution which came to my mind is to remove the file from the original
> recipe using a bbappend, but I think this isn't a really "clean" way.
>
> Does anybody have another/better idea how to solve this "problem"?

  why not just provide a .bbappend file and an overriding file?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


