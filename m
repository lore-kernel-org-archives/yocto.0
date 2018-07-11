Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2FA9E00EBD; Wed, 11 Jul 2018 06:21:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,RCVD_IN_RP_RNBL
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.3 RCVD_IN_RP_RNBL RBL: Relay in RNBL,
	*      https://senderscore.org/blacklistlookup/
	*      [87.81.244.161 listed in bl.score.senderscore.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AB06E00D2F
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 06:21:30 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w6BDLFbf007457
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Wed, 11 Jul 2018 14:21:22 +0100
Message-ID: <f9f8617f880d57694c54585dcbb3c9737e509ceb.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "'yocto@yoctoproject.org'"
	<yocto@yoctoproject.org>, "Jolley, Stephen K" <stephen.k.jolley@intel.com>,
	"Eggleton, Paul" <paul.eggleton@intel.com>
Date: Wed, 11 Jul 2018 14:21:15 +0100
In-Reply-To: <9DDD2658D1FE414E99172D2DB1E4D04335E7F876@PGSMSX109.gar.corp.intel.com>
References: <9DDD2658D1FE414E99172D2DB1E4D04335E7F876@PGSMSX109.gar.corp.intel.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Cc: "Kirkiris, Nectar" <nectar.kirkiris@intel.com>
Subject: Re: QA cycle report for 2.3.4 RC1
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
X-List-Received-Date: Wed, 11 Jul 2018 13:21:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2018-07-10 at 06:11 +0000, Yeoh, Ee Peng wrote:
> This is the full report for 2.3.4.rc1: 
> https://wiki.yoctoproject.org/wiki/WW25_-_2018-06-22-_Full_Test_Cycle
> _-_2.3.4_rc1
>  
> ======= Summary ========
>  
> All planned tests were executed.  There were zero high milestone
> defect.  Team had found 3 new defects where yocto-bsp failed to
> create bootable image with new bsp layer [1], QEMU ended unexpectedly
> during do_testimage:core-image-lsb-sdk [2], & valgrind ptest passed
> in 2.3.3.rc1 failed at current release [3].  
>  
> ======= QA-Hints========
>  
> Found 3 non critical defects. 
>  
> ======= Bugs ========

Thanks for this Ee Peng and team!

> New Bugs
> [1] Bug 12846 - [QA 2.3.4rc1][Meta-Yocto][Case 309, Case 310]: After
> creating BSP layer using yocto-bsp, the image created not able to
> boot up as local variable 'qbsys' referenced before assignment
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12846

Has this ever worked? I agree we should have a better error message but
ultimately its due to runqemu not understanding that MACHINE name.

I don't think that is a release blocker.

> [2] Bug 12812 - [2.3.4 rc1] Qemu ended unexpectedly during
> do_testimage:core-image-lsb-sdk
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12812

We believe this is due to the infamous apic issues we've had with
certain kernel versions (IA only). Its annoying and something we should
fix but not a release blocker IMO.
 
> [3] Bug 12847 - [2.3.4 rc1] valgrind ptest failed
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12847

This is annoying but we'd probably focus on master for ptest work.

Looking at the various bugs filed against the release in the QA report,
I think there are some annoying issues but nothing to warrant an rc2
given our current resource situation so I'd suggest releasing rc1.

Cheers,

Richard




